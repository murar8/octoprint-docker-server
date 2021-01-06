```diff
accessControl:
+    trustRemoteUser: true
+    remoteUserHeader: X-Auth-User

```

```
htdigest -c .htdigest traefik octoprint
```
