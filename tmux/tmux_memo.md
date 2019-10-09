# Useful (but easy to forget) shortcuts in tmux

## Starting and ending sessions

- Start a new session
```
tmux new -s new_session_name
```

- Attach an existing session
```
tmux a -t session_name
```

- List up existing sessions
```
tmux ls
```

- Detach session
This is what you do when you do not want to eliminate the session
history but get out of the session temporarilly.
```
tmux detach
```

- Kill sessions
If you want to eliminate the session completely, use this. 
```
tmux kill-session -t session_name
``` 
## Controlling panes

- Basic prefix
```
Ctrl + b
```
- Split pane vertically
```
Ctrl + b + %
```

- Split pane horizontally
```
Ctrl + b + "
```

- Change panes
```
Ctrl + b + arrowkey
```

- Kill panes
```
Ctrl + b + x
```
