##### Learning Chef 12.x

* https://learn.chef.io/rhel/configure-a-resource/
* download Chef DK for exploring the Chef feature
* I test recipes on Redhat Enterprise 7.x. Chef runs fine.

##### How to setup lab

* cheapest solution is virtualbox application to host your virtual VM.
* setup through cobbler kickstart [cobbler](http://www.cobblerd.org/).
* setup my own DNS to cache all local host names.
* simply protects by firewalld (iptables) from host side.
* use Chef DK to provision production simulation.

##### How to use
* sudo chef-apply [recipe]
