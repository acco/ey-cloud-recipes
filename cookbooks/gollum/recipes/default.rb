#
# Cookbook Name:: gollum
# Recipe:: default
#
execute "stop nginx" do
  command "/etc/init.d/nginx stop"
  only_if "/etc/init.d/nginx status"
end

execute "generate static files" do
  command "cd /data/ey_wiki/current/ && gollum-site generate"
end

execute "start gollum server" do
  command "cd /data/ey_wiki/current/ && sudo gollum-site serve --port 80 &"
end  