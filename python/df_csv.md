# How to create a dataframe, and save it as csv file?



```
import pandas

v1ls = v2ls = v3ls = []  # save columns as lists

df_dict = {v1: v1ls, v2: v2ls, v3: v3ls}  # create dictionary (key = column name, value = list)

df = pd.DataFrame.from_dict{df_dict}  # convert dictionary to dataframe

df.to_csv("path/filename")
```

There are other ways, but I find this method most useful. 

## Reference
http://pbpython.com/pandas-list-dict.html
