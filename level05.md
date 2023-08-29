*/2 * * * * su -c "sh /usr/sbin/openarenaserver" - flag05

```
#!/bin/sh

for i in /opt/openarenaserver/* ; do
        (ulimit -t 5; bash -x "$i")
        rm -f "$i"
done
```

flag05 : viuaaale9huek52boumoomioc