yum Cookbook
============
first yum cookbook.

Recipes
-------
* tie with artifactory yum repos.
![artifacts](https://github.com/boonchu/Cheflabs/blob/master/cookbooks/yum/artifacts.png)
* prepare my first repo file
```
bigchoo@server1 ~/lab/Cheflabs/cookbooks/yum (master)$ cat files/default/local-repo-epel7-extra.repo
[server1.cracker.org_8081_artifactory_repo]
name=added from: http://server1.cracker.org:8081/artifactory/local-rpm-release/
baseurl=http://server1.cracker.org:8081/artifactory/local-rpm-release/
enabled=1
gpgcheck=0
```
* upload cookbook recipe
```
$ knife cookbook upload yum
$ knife node run_list add [hostname] 'recipe[yum],recipe[learn_chef_httpd]'
$ sudo chef-client --local-mode --runlist 'recipe[yum],recipe[learn_chef_httpd]'
```

Results
-------
* I want to see this...
```
bigchoo@vmk1 1042 $ _cowsay
 _________________________________________
/ Bagbiter:                               \
|                                         |
| 1. n.; Equipment or program that fails, |
| usually intermittently. 2. adj.:        |
| Failing hardware or software. "This     |
| bagbiting system won't let me get out   |
| of spacewar." Usage: verges on          |
| obscenity. Grammatically separable; one |
| may speak of "biting the bag".          |
| Synonyms: LOSER, LOSING, CRETINOUS,     |
| BLETCHEROUS, BARFUCIOUS, CHOMPER,       |
\ CHOMPING.                               /
 -----------------------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||
                ```
