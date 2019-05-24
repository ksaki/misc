## Regex My Cheat sheet

##  match(), search(), findall(), finditer()

match() only looks at the beginning of the string, and see if the pattern matches. 
search() searches the entire string, and find the first match anywhere in the string. 
findall() searches the entire string like search(), but find all matches anywhere in the string. If one or more groups are present in the pattern, return a list of groups
finditer() does the same thing as findall() but return an iterator. 
Both findall() and finditer() match only non-overlapping patterns. (see below)

```
## compare match and search

text = "ABCDE"

re.match("ABC", text)  # matches "ABC"
re.search("ABC", text) # "ABC"

re.match("DE", text) # None
re.search("DE", text) # "DE"

## compare serach and findall

text = "100ABCABC"

re.search("ABC", text) # "ABC"
re.findall("ABC", text) # "ABC", "ABC"
```

Reference: https://docs.python.org/3/library/re.html#search-vs-match

## match object

Use [] or group() method to extract the string in the matched object.

```
text = "ABC"

matched = re.match("A", text)
matched[0] # returns "A"
matched.group(0) # return "A"

```



## Lookaround

The key of the lookaround family is that it "does not "consume" any characters on the string. This means that after the lookahead or lookbehind's closing parenthesis, the regex engine is left standing on the very same spot in the string from which it started looking: it hasn't moved" 

- Positive Lookahead

```
ABC(?=DE)
```

This means that the engine matches ABC, and then what immediately follows after that is DE.

- Positive Lookbehind

```

```

Reference: https://www.rexegg.com/regex-disambiguation.html#lookahead



