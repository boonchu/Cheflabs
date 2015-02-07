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
