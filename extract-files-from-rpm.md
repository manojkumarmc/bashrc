#### extract files from rpm
```
rpm2cpio openssl-1.0.1e-48.el6.x86_64.rpm | cpio -idmv
```
#### find patches in package
```
rpm -q --changelog <package-name> | grep patch
```
