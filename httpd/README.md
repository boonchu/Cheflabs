##### webserver recipe 

##### How to run

sudo chef-apply ./webserver.rb
```
$ curl localhost
<html>
  <body>
        <h1>hello world</h1>
  </body>
</html>
```
##### Change log
* Modified recipe to fit with redhat 7 firewalld service name - 02/07/2015 (boonchu)
