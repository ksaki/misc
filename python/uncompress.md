# Uncompress files

## Zip file
```
import zipfile

with zipfile.ZipFile('file.zip', 'r') as zf:
  zf.extractall('unzipdir')
```

## Lzma
```
with lzma.open('file.xz', mode = 'rt') as lf:
```

