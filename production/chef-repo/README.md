###### Knife Bootstrap

* get the starter kit from hosted Chef and unzip it to parent of cookbook folder.
```
$ tree .chef
.chef
├── boonchu.pem
├── knife.rb
└── thai-foods-validator.pem
```
* push the cookbook
```
$ knife cookbook upload learn_chef_httpd
```
* bootstrap new node from remote node
```
knife bootstrap vmk2.cracker.org --ssh-user 'user' --ssh-password 'password' \
  --sudo --use-sudo-password --node-name 'hostname' \
  --run-list 'recipe[learn_chef_httpd]'
```
* list of nodes that recently converge (last chef-client run).
```
$ knife node list
```
* list of nodes that recently converge with timestamp
```
$ knife exec -E 'nodes.all {|n| puts "#{n.name} #{Time.at(n[:ohai_time])}"}'
vmk2.cracker.org 2015-02-11 21:04:04 -0800
```
* similar output from knife status
```
$ knife status
16 minutes ago, vmk2.cracker.org, vmk2.cracker.org, 192.168.1.162, redhat 7.1.
```
