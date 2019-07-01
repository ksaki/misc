# Notes: Basic usage of Git hub

## Update changes 


0. check everything is up to date
```
git pull orign master
```

1. add
```
git add .
(add eveything)
```

2. commit
```
git commit -m "something"
```

5. push
```
git push origin master
```


## Clone remote repository to local 

1. create remote repository on git hub website

2. copy SSH from "Clone or Download"

3. move to the directory in which you want the local directory 
(if you want to create new directory under Documents, go inside the Documents. Do NOT create new folder for the local directory.)

4. clone
```
git clone <SSH>
```

## fetch remotly created branches to the local repository
```
git fetch origin <name of the remote new branch>:<name of the copy of the remote new branch>
```
