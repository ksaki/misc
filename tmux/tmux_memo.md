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
- Kill sessions
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
