# How to read json files on python?


## Read from jsonl file 
```
with open ('filename') as f:
  for line in f:
    text = json.loads(line) #loads = from json to python object
```

## Reference
Bonzanini, M., 2016.* Mastering social media mining with Python*. Packt Publishing Ltd.
