cookbook_file "/etc/yum.repos.d/local-repo-epel7-extra.repo" do
	source "local-repo-epel7-extra.repo"
	mode 0644
end
