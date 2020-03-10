#!/usr/bin/gawk -f
BEGIN{
    urls[1]="https://www.timeanddate.com/sun/usa/new-york?month=1&year=2013"
    urls[2]="https://www.timeanddate.com/sun/usa/new-york?month=2&year=2013"
    urls[3]="https://www.timeanddate.com/sun/usa/new-york?month=3&year=2013"
    urls[4]="https://www.timeanddate.com/sun/usa/new-york?month=4&year=2013"
    urls[5]="https://www.timeanddate.com/sun/usa/new-york?month=5&year=2013"
    urls[6]="https://www.timeanddate.com/sun/usa/new-york?month=6&year=2013"
    urls[7]="https://www.timeanddate.com/sun/usa/new-york?month=7&year=2013"
    urls[8]="https://www.timeanddate.com/sun/usa/new-york?month=8&year=2013"
    urls[9]="https://www.timeanddate.com/sun/usa/new-york?month=9&year=2013"
    urls[10]="https://www.timeanddate.com/sun/usa/new-york?month=10&year=2013"
    urls[11]="https://www.timeanddate.com/sun/usa/new-york?month=11&year=2013"
    urls[12]="https://www.timeanddate.com/sun/usa/new-york?month=12&year=2013"
    
    urls[13]="https://www.timeanddate.com/sun/usa/new-york?month=1&year=2014"
    urls[14]="https://www.timeanddate.com/sun/usa/new-york?month=2&year=2014"
    urls[15]="https://www.timeanddate.com/sun/usa/new-york?month=3&year=2014"
    urls[16]="https://www.timeanddate.com/sun/usa/new-york?month=4&year=2014"
    urls[17]="https://www.timeanddate.com/sun/usa/new-york?month=5&year=2014"
    urls[18]="https://www.timeanddate.com/sun/usa/new-york?month=6&year=2014"
    urls[19]="https://www.timeanddate.com/sun/usa/new-york?month=7&year=2014"
    urls[20]="https://www.timeanddate.com/sun/usa/new-york?month=8&year=2014"
    urls[21]="https://www.timeanddate.com/sun/usa/new-york?month=9&year=2014"
    urls[22]="https://www.timeanddate.com/sun/usa/new-york?month=10&year=2014"
    urls[23]="https://www.timeanddate.com/sun/usa/new-york?month=11&year=2014"
    urls[24]="https://www.timeanddate.com/sun/usa/new-york?month=12&year=2014"

    urls[25]="https://www.timeanddate.com/sun/usa/new-york?month=1&year=2015"
    urls[26]="https://www.timeanddate.com/sun/usa/new-york?month=2&year=2015"
    urls[27]="https://www.timeanddate.com/sun/usa/new-york?month=3&year=2015"
    urls[28]="https://www.timeanddate.com/sun/usa/new-york?month=4&year=2015"
    urls[29]="https://www.timeanddate.com/sun/usa/new-york?month=5&year=2015"
    urls[30]="https://www.timeanddate.com/sun/usa/new-york?month=6&year=2015"
    urls[31]="https://www.timeanddate.com/sun/usa/new-york?month=7&year=2015"
    urls[32]="https://www.timeanddate.com/sun/usa/new-york?month=8&year=2015"
    urls[33]="https://www.timeanddate.com/sun/usa/new-york?month=9&year=2015"
    urls[34]="https://www.timeanddate.com/sun/usa/new-york?month=10&year=2015"
    urls[35]="https://www.timeanddate.com/sun/usa/new-york?month=11&year=2015"
    urls[36]="https://www.timeanddate.com/sun/usa/new-york?month=12&year=2015"

    urls[37]="https://www.timeanddate.com/sun/usa/new-york?month=1&year=2016"
    urls[38]="https://www.timeanddate.com/sun/usa/new-york?month=2&year=2016"
    urls[39]="https://www.timeanddate.com/sun/usa/new-york?month=3&year=2016"
    urls[40]="https://www.timeanddate.com/sun/usa/new-york?month=4&year=2016"
    urls[41]="https://www.timeanddate.com/sun/usa/new-york?month=5&year=2016"
    urls[42]="https://www.timeanddate.com/sun/usa/new-york?month=6&year=2016"
    urls[43]="https://www.timeanddate.com/sun/usa/new-york?month=7&year=2016"
    urls[44]="https://www.timeanddate.com/sun/usa/new-york?month=8&year=2016"
    urls[45]="https://www.timeanddate.com/sun/usa/new-york?month=9&year=2016"
    urls[46]="https://www.timeanddate.com/sun/usa/new-york?month=10&year=2016"
    urls[47]="https://www.timeanddate.com/sun/usa/new-york?month=11&year=2016"
    urls[48]="https://www.timeanddate.com/sun/usa/new-york?month=12&year=2016"

    urls[49]="https://www.timeanddate.com/sun/usa/new-york?month=1&year=2017"
    urls[50]="https://www.timeanddate.com/sun/usa/new-york?month=2&year=2017"
    urls[51]="https://www.timeanddate.com/sun/usa/new-york?month=3&year=2017"
    urls[52]="https://www.timeanddate.com/sun/usa/new-york?month=4&year=2017"
    urls[53]="https://www.timeanddate.com/sun/usa/new-york?month=5&year=2017"
    urls[54]="https://www.timeanddate.com/sun/usa/new-york?month=6&year=2017"
    urls[55]="https://www.timeanddate.com/sun/usa/new-york?month=7&year=2017"
    urls[56]="https://www.timeanddate.com/sun/usa/new-york?month=8&year=2017"
    urls[57]="https://www.timeanddate.com/sun/usa/new-york?month=9&year=2017"
    urls[58]="https://www.timeanddate.com/sun/usa/new-york?month=10&year=2017"
    urls[59]="https://www.timeanddate.com/sun/usa/new-york?month=11&year=2017"
    urls[60]="https://www.timeanddate.com/sun/usa/new-york?month=12&year=2017"

    urls[61]="https://www.timeanddate.com/sun/usa/new-york?month=1&year=2018"
    urls[62]="https://www.timeanddate.com/sun/usa/new-york?month=2&year=2018"
    urls[63]="https://www.timeanddate.com/sun/usa/new-york?month=3&year=2018"
    urls[64]="https://www.timeanddate.com/sun/usa/new-york?month=4&year=2018"
    urls[65]="https://www.timeanddate.com/sun/usa/new-york?month=5&year=2018"
    urls[66]="https://www.timeanddate.com/sun/usa/new-york?month=6&year=2018"
    urls[67]="https://www.timeanddate.com/sun/usa/new-york?month=7&year=2018"
    urls[68]="https://www.timeanddate.com/sun/usa/new-york?month=8&year=2018"
    urls[69]="https://www.timeanddate.com/sun/usa/new-york?month=9&year=2018"
    urls[70]="https://www.timeanddate.com/sun/usa/new-york?month=10&year=2018"
    urls[71]="https://www.timeanddate.com/sun/usa/new-york?month=11&year=2018"
    urls[72]="https://www.timeanddate.com/sun/usa/new-york?month=12&year=2018"

    OFS="|"
    outputCommand="gzip > dateLength.gz"
    #on each URL (each has the table of the month)
    for (url in urls){
	command="curl " urls[url]
        RS="\0"
	if ((command|getline)<=0){
	   print "couldn’t read file">"/dev/stderr"
	   exit -1
	}
	#extracts the month and year from the URL
	match(urls[url], /month=([0-9][0-9]?)&.*([0-9]{4})$/,date)
	month=date[1]
	#puts the month in a two digit format
	if (length(month)==1)
	    month="0" month
	year=date[2]
	#split in rows
	lines=split($0,rows,/<tr data/)
	#for each row extract the day of the month and the length of that day (only consider hours and minutes)
	for (i=2;i<=length(rows);i++){
	    if (match(rows[i],/^-day=([^ ]{1,2}).*<td class="c tr sep-l\">([0-9][0-9]?:[0-9]{2})/,info)){
		#put the day in a two digit format
		if (length(info[1])==1){
		    info[1]="0" info[1]
		    parts=split(info[2],time,":")
		}
		#print month/day/year|length of day
		print month "/" info[1] "/" year, time[1] "." time[2]|outputCommand
	    }
	}
    }
}       
