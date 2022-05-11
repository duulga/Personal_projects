#Json file parser 개발
#Import modules

import csv
import json

def json_to_csv(file, ofile) :
    """Converts json file to csv file
        It can convert keys with value which is list.
    """
    #Opening JSON file and loading
    #JSON 파일을 열고 로딩한다.
    input_file = file
    with open(input_file, encoding='utf-8') as json_file:
        data = json.load(json_file)
    #Opening CSV file to write
    #쓸 CSV 파일을 연다.
    output = open(ofile, 'a', newline='', encoding='utf-8')
    #Creating CSV writer object
    #CSV writer 오브젝트를 생산한다.
    csv_writer = csv.writer(output)
    #Temporary lists to make a row of data to write in csv file
    #CSV 파일에 들어갈 데이터를 열에 나열하기 위한 임시적인 리스트들
    temp = []
    temp1 = []
    temp2 = []
    #Iterating every key
    #키를 반복한다.
    for k in data:
        #Checking if key's value is list
        #키의 값이 리스트인지 확인
        if type(data[k]) is list:
            #Iterating through list
            #리스트 아이템 반복
            for i in data[k]:
                #Iterating through keys
                #키 반복
                for j in i:
                    #Checking if key's value is another dictionary
                    #해당 키의 값이 또 다른 dictionary인지 확인
                    if type(i[j]) is dict:
                        for v in i[j]:
                            #Making an attribute for every value in dictionary
                            #값들을 나열하기위한 속성 행을 만든다.
                            temp1.append(j + "/" + v)
                            temp2.append(i[j][v])
                    else: 
                        temp1.append(j)
                        temp2.append(i[j])
        else:
            temp.append(data[k])
    #first row for non-list values
    #첫 행은 리스티가 아닌 값들로 구성
    csv_writer.writerow(temp)
    temp = []
    #second row for attributes (둘째 행은 속성들로 구성)
    #checking if there are duplicate attributes
    #똑같은 속성이 있는지 확인
    for i in temp1:
        if i in temp:
            pass
        else:
            temp.append(i)
    rows = int(len(temp2)/len(temp))
    csv_writer.writerow(temp)

    temp3 = []
    #writing rest of the rows which contain values
    #나머지 행은 값들로 구성
    for i in range(rows):
        for j in range(i*len(temp), (i+1)*len(temp)):
            temp3.append(temp2[j])
        csv_writer.writerow(temp3)
        temp3 = []
    output.close()

json_to_csv("test.json", "output.csv")
#converting 2 json files to one csv file
#두개의 json 파일을 하나의 CSV 파일로 만듬
json_to_csv("test.json", "output1.csv")
json_to_csv("test1.json", "output1.csv")
