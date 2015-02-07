##### learn_chef_httpd Cookbook

* mkdir cookbooks && cd cookbooks
* create template under cookbooks folder
```
chef generate cookbook learn_chef_httpd && tree
```
* update default.rb file
* The run-list lets you specify which recipes to run, and the order in which to 
  run them. This is handy once you have lots of cookbooks, and the order in which 
  they run is important.
```
  sudo chef-client --local-mode --runlist 'recipe[learn_chef_httpd]'
```
* sample output
```
$ sudo chef-client --local-mode --runlist 'recipe[learn_chef_httpd]'
[sudo] password for bigchoo:
[2015-02-07T09:55:54-08:00] WARN: No config file found or specified on command line, using command line options.
Starting Chef Client, version 12.0.3
resolving cookbooks for run list: ["learn_chef_httpd"]
Synchronizing Cookbooks:
  - learn_chef_httpd
Compiling Cookbooks...
Converging 4 resources
Recipe: learn_chef_httpd::default
  * yum_package[httpd] action install (up to date)
  * service[httpd] action start (up to date)
  * service[httpd] action enable (up to date)
  * template[/var/www/html/index.html] action create
    - update content in file /var/www/html/index.html from 86210f to ebb33e
    (no diff)
  * service[firewalld] action stop (up to date)
  * service[firewalld] action disable (up to date)

Running handlers:
Running handlers complete
Chef Client finished, 1/6 resources updated in 3.898473203 seconds
```
