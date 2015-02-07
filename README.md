##### Learning Chef 12.x

* Goals to achieve
  * be able to provision docker with Chef DK
  * be able to setup and integrate entire testing process with Jenkins

* https://learn.chef.io/rhel/configure-a-resource/
* download Chef DK for exploring the Chef feature
* I test recipes on Redhat Enterprise 7.x. Chef runs fine.

##### How to setup lab

* cheapest solution is virtualbox application to host your virtual VM.
* setup through cobbler kickstart [cobbler](http://www.cobblerd.org/).
* setup my own DNS to cache all local host names.
* simply protects by firewalld (iptables) from host side.
* use Chef DK to provision production simulation.

##### Prior to use the chef command
* run chef to validate the shell environment and verify environemnts
```
$ chef shell-init bash
$ chef verify
```
* (if any) add your organization starter kit that recently created 
  from hosted chef site directly to your prepared cookbooks.

##### How to use
* sudo chef-apply [recipe]
