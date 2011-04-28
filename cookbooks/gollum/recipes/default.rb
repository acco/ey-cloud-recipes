#
# Cookbook Name:: gollum
# Recipe:: default
#

execute "stop nginx" do
  command "/etc/init.d/nginx stop"
  only_if "/etc/init.d/nginx status"
end