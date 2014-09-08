#
# Cookbook Name:: chef-metal
# Recipe:: default
#
# Copyright (C) 2014 Bloomberg L.P.
#
# All rights reserved - Do Not Redistribute
#

chef_gem 'chef-metal' do
  version node['chef-metal']['version']
end

require 'chef_metal'
