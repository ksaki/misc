# How to set up vim-dadbod 

- [vim-dadbod](https://github.com/tpope/vim-dadbod) allows to work on sql interactively through vim.

- To establish connection with MySQL, 
1. Make sure to start SQL server (from System Preference)
2. Add `let let b:db = "mysql://root:@localhost/DATABASE_NAME"`
3. Open .sql file. Select the line that you want to execute, and `:'<,'>DB`
4. You will have to provide your password when you execute first time in the session. 

## Reference
- [https://habamax.github.io/2019/09/02/use-vim-dadbod-to-query-databases.html](https://habamax.github.io/2019/09/02/use-vim-dadbod-to-query-databases.html)
