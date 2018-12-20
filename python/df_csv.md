# How to save data as csv file?


1. Create a dataframe, and save it as csv file
```
import pandas

v1ls = v2ls = v3ls = []  # save columns as lists

df_dict = {v1: v1ls, v2: v2ls, v3: v3ls}  # create dictionary (key = column name, value = list)

df = pd.DataFrame.from_dict(df_dict)  # convert dictionary to dataframe

df.to_csv("path/filename")
```

There are other ways, but I find this method most simple when the dataframe is small. 
However, when we iteratively obtains rows, for instance when we get data through API, 
this method might be risky because it saves all the data after we form a complete dataframe. 

Alternatively, we can add each row to the csv file. 
```
import csv

row = ["a", "b", "c"]
with open("filename", "a") as f:
  writer = csv.writer(f)
  writer.writerow(row)
```



## Reference
http://pbpython.com/pandas-list-dict.html
https://stackoverflow.com/questions/2363731/append-new-row-to-old-csv-file-python
