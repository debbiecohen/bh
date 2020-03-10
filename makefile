#final result
all: graph.pdf

#removes files created in the process
clean:
	rm dateLength.gz dateTypeNum2.gz countedCalls finalDataWithRepeats.txt finalData.txt graph.pdf

#Organize links in -->  date|length
dateLength.gz: organizeHours.awk
	./organizeHours.awk
#Organize mental health Calls --> date|type|severity
dateTypeNum2.gz: organizeCalls.awk EMS_Incident_Dispatch_Data.tsv.gz
	./organizeCalls.awk
#Counts calls per day --> "date"   number of calls
countedCalls: dateTypeNum2.gz countCalls.py
	zcat dateTypeNum2.gz|./countCalls.py >countedCalls
#Puts together length of day and number of calls per day--> length|#Calls
finalDataWithRepeats.txt: countedCalls dateTypeNum2.gz dateLength.gz
	./finalData.awk|sort -n>finalDataWithRepeats.txt
#Takes the average of calls done everyday that has n hours--> length|#Calls
finalData.txt: finalDataWithRepeats.txt
	spark-submit avgFinalData.py
#Makes the bar graph
graph.pdf: finalData.txt
	python3 makeFinalGraphBars.py


