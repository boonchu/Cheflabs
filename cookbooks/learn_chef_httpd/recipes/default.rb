package 'httpd' do
  action :install
end

package 'cowsay' do
  action :install
end

package 'fortune-mod' do
  action :install
end

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
