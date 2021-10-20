Example from https://serversforhackers.com/c/monitoring-processes-with-supervisord

Targets to build and run containers can be found in Makefile.




```
Starting supervisor: supervisord.
root@98568e0e362c:/# supervisorctl status
nodehook                         RUNNING   pid 18, uptime 0:00:05
root@98568e0e362c:/# supervisorctl reread nodehook
No config updates to processes
root@98568e0e362c:/# supervisorctl update nodehook
root@98568e0e362c:/# supervisorctl status
nodehook                         RUNNING   pid 18, uptime 0:01:00
root@98568e0e362c:/# supervisorctl status
nodehook                         RUNNING   pid 18, uptime 0:01:25
root@98568e0e362c:/# supervisorctl restart nodehook
nodehook: stopped
nodehook: started
root@98568e0e362c:/# supervisorctl status
nodehook                         RUNNING   pid 37, uptime 0:00:04
root@98568e0e362c:/# supervisorctl stop nodehook
nodehook: stopped
root@98568e0e362c:/# supervisorctl status
nodehook                         STOPPED   Oct 20 10:27 AM
root@98568e0e362c:/# supervisorctl reread nodehook
No config updates to processes
root@98568e0e362c:/# supervisorctl update nodehook
root@98568e0e362c:/# supervisorctl status
nodehook                         STOPPED   Oct 20 10:27 AM
root@98568e0e362c:/# supervisorctl restart nodehook
nodehook: ERROR (not running)
nodehook: started
root@98568e0e362c:/# supervisorctl status
nodehook                         RUNNING   pid 49, uptime 0:00:07
root@98568e0e362c:/#
```

