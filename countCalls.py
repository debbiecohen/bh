#!/usr/bin/env python3
from mrjob.job import MRJob

class WFCount(MRJob):
    #split the file in date type and severity(not using it)
    #yield only date and a 1(on that day, one call related to mental health)
    def mapper(self, _, line):
        fields=line.split('|')
        yield (fields[0],1)
    #Sum the calls done per day
    def combiner(self, key, values):
        yield key, sum(values)
    def reducer(self, key, values):
        yield key, sum(values)

if __name__=='__main__':
    WFCount.run()
