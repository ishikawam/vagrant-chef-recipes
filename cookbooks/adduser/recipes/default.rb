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

group "wheel" do
  action [:modify]
  members ["hoge"]
  append true
end
