#
# Cookbook Name:: learn_chef_httpd
# Recipe:: default
#
# Copyright (C) 2014
#
#
#
package 'httpd'

service 'httpd' do
  action [:start, :enable]
end

template '/var/www/html/index.html' do
  source 'index.html.erb'
end

if platform?("redhat")
        if node.platform_version.to_f < 7.0
                service 'iptables' do
                        action [:stop, :disable]
                end
        else
                service 'firewalld' do
                        action [:stop, :disable]
                end
        end
end
