#!/usr/bin/gawk -f
BEGIN{
    inputCommand="zcat EMS_Incident_Dispatch_Data.tsv.gz"
    OFS="|"
    #create an array of mental health associated codes
    mentalHealth["JUMPUP"]=1
    mentalHealth["JUMPDN"]=1
    mentalHealth["EDP"]=1
    mentalHealth["MCI42"]=1
    mentalHealth["MCI42P"]=1
    mentalHealth["ALTMEN"]=1
    outputCommand="gzip > dateTypeNum2.gz"#the info I need is here
    while((inputCommand|getline)>0){#for each line
	split($2,fields, " ")#split the field 1 in date and hour
	if ($7 in mentalHealth){
	    print fields[1],$7,$6|outputCommand #only print date and the original fields of the code and scale
	}
    }
}
        
