remote_file "/etc/nginx/servers/simple_chef.conf" do
  owner "root"
  group "root"
  mode 0755
  source "simple_chef.conf"
  backup false
  action :create
end

execute "restart nginx" do
  command "/etc/init.d/nginx restart"
end