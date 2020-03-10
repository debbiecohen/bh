#!/usr/bin/env python3
#GRAPH HOURS VS CALL
import matplotlib.pyplot as plt
import pylab


fin=open("finalData.txt","rt")
#create a figure that will later be written to a PDF
f=plt.figure()

numOfCalls=[]
hours=[]
for line in fin:
    cols=line.split("|")
    #creates the list of the different lengths of dayLight hours (x axis)
    hours.append(cols[0])
    #creates the list of the number of calls done everyday that has x number of light hours
    numOfCalls.append(float(cols[1]))

x=range(len(hours))
plt.bar(x,numOfCalls)
pylab.xticks(x,hours, fontsize=6, rotation=90)
plt.xlabel('Hours of Light')
plt.ylabel('Number Of Calls')

plt.title('Hours of Light vs Number of EMS Calls(mental health related)')

#save the plot into a PDF file
f.savefig("graph.pdf")
