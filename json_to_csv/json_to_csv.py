#Json file parser 개발
#Import modules

import csv
import json

def json_to_csv(file, ofile) :
    """Converts json file to csv file
        It can convert keys with value which is list.
    """
    #Opening JSON file and loading
    input_file = file
    with open(input_file, encoding='utf-8') as json_file:
        data = json.load(json_file)
    #Opening CSV file to write
    output = open(ofile, 'w', newline='', encoding='utf-8')
    #Creating CSV writer object
    csv_writer = csv.writer(output)
    #Temporary lists to make a row of data to write in csv file
    temp = []
    temp1 = []
    temp2 = []
    #Iterating every key
    for k in data:
        #Checking if key's value is list
        if type(data[k]) is list:
            #Iterating through list
            for i in data[k]:
                #Iterating through keys
                for j in i:
                    #Checking if key's value is another dictionary
                    if type(i[j]) is dict:
                        for v in i[j]:
                            #Making an attribute for every value in dictionary
                            temp1.append(j + "/" + v)
                            temp2.append(i[j][v])
                    else: 
                        temp1.append(j)
                        temp2.append(i[j])
        else:
            temp.append(data[k])
    #first row for non-list values
    csv_writer.writerow(temp)
    temp = []
    #second row for attributes
    #checking if there are duplicate attributes
    for i in temp1:
        if i in temp:
            pass
        else:
            temp.append(i)
    rows = int(len(temp2)/len(temp))
    csv_writer.writerow(temp)

    temp3 = []
    #writing rest of the rows which contain values
    for i in range(rows):
        for j in range(len(temp)):
            temp3.append(temp2[j])
        csv_writer.writerow(temp3)
        temp3 = []

    output.close()

json_to_csv("test.json", "output.csv")
json_to_csv("test1.json", "output1.csv")
