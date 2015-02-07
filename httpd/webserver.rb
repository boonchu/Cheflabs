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

if platform?("redhat") and node.platform_version.to_f > 6.5
	service 'firewalld' do
		action [:stop, :disable]
	end
end
