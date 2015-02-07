package 'httpd'

service 'httpd' do
	action [:start, :enable]
end

file '/var/www/html/index.html' do
	content '<html>
  <body>
	<h1>hello world</h1>
  </body>
</html>'
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
