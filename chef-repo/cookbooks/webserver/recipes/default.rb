#
# Cookbook Name:: webserver
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

include_recipe "apt::default"

package "nginx" do
  action :install
end

template "/usr/share/nginx/www/index.html" do
  source "index.html.erb"
  mode "0644"
end

template "/etc/nginx/nginx.conf" do
  source "nginx.conf.erb"
  mode "0644"
end

template "/etc/nginx/sites-available/default" do
  source "default.erb"
end