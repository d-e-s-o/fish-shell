# RUN: %fish --interactive %s

fish_vi_key_bindings

commandline '123'; commandline --cursor 0; vi_inc
commandline --current-buffer
# CHECK: 124

commandline '123'; commandline --cursor 0; vi_dec
commandline --current-buffer
# CHECK: 122

commandline '123'; commandline --cursor 1; vi_inc
commandline --current-buffer
# CHECK: 124

commandline '123'; commandline --cursor 1; vi_dec
commandline --current-buffer
# CHECK: 122

commandline '123'; commandline --cursor 2; vi_inc
commandline --current-buffer
# CHECK: 124

commandline '123'; commandline --cursor 2; vi_dec
commandline --current-buffer
# CHECK: 122

commandline '123'; commandline --cursor 3; vi_inc
commandline --current-buffer
# CHECK: 123

commandline '123'; commandline --cursor 3; vi_dec
commandline --current-buffer
# CHECK: 123

commandline 'abc123'; commandline --cursor 1; vi_inc
commandline --current-buffer
# CHECK: abc124

commandline 'abc123'; commandline --cursor 1; vi_dec
commandline --current-buffer
# CHECK: abc122

commandline 'abc123def'; commandline --cursor 1; vi_inc
commandline --current-buffer
# CHECK: abc124def

commandline 'abc123def'; commandline --cursor 1; vi_dec
commandline --current-buffer
# CHECK: abc122def

commandline 'abc123def'; commandline --cursor 5; vi_inc
commandline --current-buffer
# CHECK: abc124def

commandline 'abc123def'; commandline --cursor 5; vi_dec
commandline --current-buffer
# CHECK: abc122def

commandline 'abc123def'; commandline --cursor 6; vi_inc
commandline --current-buffer
# CHECK: abc123def

commandline 'abc123def'; commandline --cursor 6; vi_dec
commandline --current-buffer
# CHECK: abc123def

commandline 'abc99def'; commandline --cursor 1; vi_inc
commandline --current-buffer
# CHECK: abc100def

commandline 'abc99def'; commandline --cursor 1; vi_dec
commandline --current-buffer
# CHECK: abc98def

commandline 'abc-99def'; commandline --cursor 1; vi_inc
commandline --current-buffer
# CHECK: abc-98def

commandline 'abc-99def'; commandline --cursor 1; vi_dec
commandline --current-buffer
# CHECK: abc-100def

commandline 'to 2022-04-09'; commandline --cursor 4; vi_inc
commandline --current-buffer
# CHECK: to 2023-04-09

commandline 'to 2022-04-09'; commandline --cursor 4; vi_dec
commandline --current-buffer
# CHECK: to 2021-04-09

commandline 'to 2022-04-09'; commandline --cursor 11; vi_dec
commandline --current-buffer
# CHECK: to 2022-04-10
