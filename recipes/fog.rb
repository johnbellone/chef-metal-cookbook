#
# Cookbook Name:: chef-metal
# Recipe:: fog
#
# Copyright (C) 2014 Bloomberg L.P.
#
# All rights reserved - Do Not Redistribute
#

chef_gem 'chef-metal-fog' do
  version node['chef-metal-fog']['version']
end

require 'chef_metal_fog'
