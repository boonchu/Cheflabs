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
$ knife 
```
* bootstrap node from remote node
```
knife bootstrap vmk2.cracker.org --ssh-user 'user' --ssh-password 'password' \
  --sudo --use-sudo-password --node-name 'hostname' \
  --run-list 'recipe[learn_chef_httpd]'
```
