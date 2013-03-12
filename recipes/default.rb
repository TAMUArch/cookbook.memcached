#
# Cookbook Name:: memcached
# Recipe:: default
#
# Copyright 2013, Texas A&M
#
# All rights reserved - Do Not Redistribute
#
package node["memcached"]["package"] do
  action [:install]
end

if node["memcached"]["max_mem"].to_s.match("%")
  node.set[:memcached][:max_mem]= ((node["memory"]["total"].to_i / 1024)*(node["memcached"]["max_mem"].to_i * 0.01)).to_i
end

template node["memcached"]["config"] do
  source "memcached.conf.erb"
  mode "0644"
  owner "root"
  group "root"
  notifies :restart, "service[#{node["memcached"]["service_name"]}]"
end 

service node["memcached"]["service_name"] do
  action [:enable, :start]
end
