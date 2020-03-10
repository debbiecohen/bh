import pyspark
sc=pyspark.SparkContext()
file_text=sc.textFile('finalDataWithRepeats.txt')

def pairs(line):
    fields=line.split('|')
    hours=float(fields[0])
    #to many decimals, so reduce it to 0.5 or to 0.0. Only to make it pretty
    hours=int(hours*2)/2
    calls=fields[1]
    try: data=int(data[1])
    except: data=0
    return hours, calls

def pairsWithAvg(x):
    hours=x[0]
    listNums=list(x[1])
    for i in range(len(listNums)):
        listNums[i]=int(listNums[i])
    length=len(listNums)
    total=sum(listNums)
    avgCalls=total/length
    return hours, avgCalls

#hours, calls
a=file_text.map(pairs)
#hours, list of number of calls --> (hours, [#,#,...,#])
groups=a.groupByKey()
#hours, avgOfcalls
replaced=groups.map(pairsWithAvg)
#sort numerically the length
s=replaced.sortBy(lambda x: float(x[0]), ascending=True)
#Create a list with all the tuples with the data
dataList=s.collect()

fout=open("finalData.txt","w")
for k in dataList:
   print(str(k[0])+"|"+ str(k[1]), file=fout)

