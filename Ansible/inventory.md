## [nodes_list]  
[app]
172.31.31.228
172.31.23.152
172.31.28.65
172.31.21.20 package=httpd  ## first check host vars * most priority than group vars

[ubuntu]
172.31.31.228
172.31.23.152
172.31.28.65
[centos]
172.31.21.20

[app:vars]
package=apache2
