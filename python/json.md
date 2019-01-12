# Use json in python


## Read from jsonl file 
```
with open ('filename') as f:
  for line in f:
    text = json.loads(line) #loads = from json to python object
```

## prettily display json
```
print(json.dumps(text, indent = 4))
```


## Reference
Bonzanini, M., 2016."Mastering social media mining with Python". Packt Publishing Ltd.
