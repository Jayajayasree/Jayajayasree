Import urli
Import time
Price to pull = 'openprice', ' 'HighPrice', 'Lowprice', 'closeprice', 'adjustedcloseprice', 'volume'
def pull Data(price):
try:
     fileLine = data+'.txt'
      urlTovisit = 'http://chartap1.finanace.yahoo.com/instrument /1y/+ data+'.txt'
Sourcecode = urli.urlopen ( urlTovisit).read()
Splitsource = sourcecode.split('\n')
for eachLine in splitsource:
      splitLine = eachLine.split( ', ')
If len (splitLine) = = 6:
If 'values' not in eachLine:
saveFile.write(lineTowrite)
Print ' pulled', price
Print 'sleeping'
time.sleep(1)
except Exception, e:
Print 'main loop', str(e)
for eachData in priceto pull:
PullData(priceTopull)
