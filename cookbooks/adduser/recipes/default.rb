#
# Cookbook Name:: adduser
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

user "m_ishikawa" do
  password "$1$ISmhPCyK$llbWRWANWh6.W72KMXrzd1"
  supports :manage_home => true
  action :create
end

directory "/home/m_ishikawa" do
  owner "m_ishikawa"
  group "admin"
  mode 00755
  action :create
end

group "admin" do
  action [:modify]
  members ["m_ishikawa"]
  append true
end
