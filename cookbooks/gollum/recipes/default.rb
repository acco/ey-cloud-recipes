#
# Cookbook Name:: gollum
# Recipe:: default
#
execute "stop nginx" do
  command "/etc/init.d/nginx stop"
end

execute "generate static files" do
  command "cd /data/ey_wiki/current/ && gollum-site generate"
end

execute "start gollum server" do
  command "cd /data/ey_wiki/current/ && gollum-site server --port 80"
end  