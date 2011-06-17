remote_file "/etc/nginx/servers/EY_Documentation.conf" do
  owner "root"
  group "root"
  mode 0755
  source "EY_Documentation.conf"
  backup false
  action :create
end

execute "restart nginx" do
  command "/etc/init.d/nginx restart"
end