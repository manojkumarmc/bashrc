#### config file
```
	/etc/sysconfig/selinux
'''
#### Commands
```
getenforce
	display whether selinux is enabled

setenforce 
	To set up selinux from terminal
		enforcing 
		permissive 
		disabled
```

#### Policy
```
	location : /etc/sysconfif/selinux
		targeted - by default and the best
		minimum - minimalistic security
		mls - multi level security

	-Z : This will display the policy on files
		3 parts for context
		user | role | type

	To list policy of processes
		ps -Zauz

	To list all context label on filesystem
		semange -fcontext -l
		or go to the folder and do a ls -ltr Z
	
	To enable documentation
		yum whatprovides */sepolicy
		yum install policycoreutils-devel
		sepolicy manpage -a -p /usr/share/man/man8
		mandb

	To enable dest context label
		semanage fcontext -a -t httpd_sys_content_t "/web(/.*)?"
		restorecon -R -v /web
```

#### Booleans
```
getsebool -a
	semanage boolean -l
	setsebool -P ftpd_anon_write on - to enable boolean
```
