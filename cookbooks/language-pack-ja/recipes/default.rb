#
# Cookbook Name:: language-pack-ja
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "language-pack-ja" do
  action :install
end

execute 'update-locale LANG=ja_JP.UTF-8 LANGUAGE=ja_JP:ja' do
  command 'update-locale LANG=ja_JP.UTF-8 LANGUAGE="ja_JP:ja"'
  ignore_failure true
  action :run
end
