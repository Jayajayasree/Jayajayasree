
import csv
dict_month = {
    'Open':0,
    'High':0,
    'Low':0,
    'Close':0,
    'Adj Close':0,
    'Volume':0
}

time_period = 10

with open('RELIANCE.NS.csv', 'r') as file:
    reader = csv.DictReader(file)
    for row in list(reader)[-int(time_period):]:
        dict_month['Open'] = float(row['Open']) + dict_month['Open']
        dict_month['High'] = float(row['High']) + dict_month['High']
        dict_month['Low'] = float(row['Low']) + dict_month['Low']
        dict_month['Close'] = float(row['Close']) + dict_month['Close']
        dict_month['Adj Close'] = float(row['Adj Close']) + dict_month['Adj Close']
        dict_month['Volume'] = float(row['Volume']) + dict_month['Volume']
for key,values in dict_month.items():
    simple_moving_average = values/10
    print("The Simple Moving Average of " + key + " is : " + str(simple_moving_average))
