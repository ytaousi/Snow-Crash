program to exploit /home/user/level03/level03


**Using ltrace**
```
__libc_start_main(0x80484a4, 1, 0xbffff7f4, 0x8048510, 0x8048580 <unfinished ...>

getegid()                                                 = 2003
geteuid()                                                 = 2003

setresgid(2003, 2003, 2003, 0xb7e5ee55, 0xb7fed280)       = 0
setresuid(2003, 2003, 2003, 0xb7e5ee55, 0xb7fed280)       = 0

system("/usr/bin/env echo Exploit me"Exploit me


 <unfinished ...>
--- SIGCHLD (Child exited) ---
<... system resumed> )                                    = 0
+++ exited (status 0) +++
```

flag03 : qi0maab88jeaj46qoumi7maus