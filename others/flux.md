# Basic useage of flux  (at University of Michigan only!)

## Access to flux
1. Access to university network
```
ssh uniqname@scs.itd.umich.edu
```
Password is requird. 

2. Access to flux computer
```
ssh uniqname@flux-login.arc-ts.umich.edu
```
Two factor duo and password are required.

## Copy files 
```
scp localfile uniqname@flux-xfer.arc-ts.umich.edu:remotefile
```


## Use python
1. load modules
```
module load python-anaconda3
```
2. run python (make sure to use python3. default python is python2.)
```
python3 file.py
```


