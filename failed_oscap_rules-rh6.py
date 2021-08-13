#!/usr/bin/python

import re                              # import regex

fr1 = open('stig.txt', 'r')

print 
while True:
   line = fr1.readline()
   if not line:                        # Stop when EOF reached
      print
      break
   if re.search("Title", line):
      title = line.lstrip('Title')     # Remove 'Title'
   if re.search("Rule", line):
      rule = re.sub(r'[\D]', "", line) # Remove everything but numbers
      rule = rule[:-1]                 # Remove last character on the line
   if re.search("Result", line) and re.search("fail", line):
      result = line
      print rule, title.strip()        # Remove leading & trailing whitespace from title
fr1.close()
