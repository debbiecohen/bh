#!/usr/bin/gawk -f
BEGIN{
    inputCommand="zcat dateLength.gz"
    FS="|"
    #Create a dictionary with key= date and value=length
    while ((status=(inputCommand|getline))>0)
	dicHours[$1]=$2
    close("dateLength.gz")

    FS="\""
    #
    while ((status=(getline<"countedCalls"))>0){
	gsub(/\s/,"",$3)
	#for each date if it is in the dictionary print the length of that day with the number of calls on that day
        if ($2 in dicHours)
	    print dicHours[$2] "|" $3
    }
}
	
