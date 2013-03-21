#
# Cookbook Name:: memcached
# Recipe:: default
#
# Copyright 2013, Texas A&M
#
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
# WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#

package node[:memcached][:package] do
  action [:install]
end

# Allows for memory percentage to be used
if node[:memcached][:max_mem].to_s.match("%")
  node.set[:memcached][:max_mem]= ((node[:memory][:total].to_i / 1024)*(node[:memcached][:max_mem].to_i * 0.01)).to_i
end

template node[:memcached][:config] do
  source "memcached.conf.erb"
  mode "0644"
  owner "root"
  group "root"
  notifies :restart, "service[#{node[:memcached][:service_name]}]"
end 

service node[:memcached][:service_name] do
  action [:enable, :start]
end
