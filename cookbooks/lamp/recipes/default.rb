#
# Cookbook:: lamp
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

apt_update 'daily' do
  frequency 86_400
  action :periodic
end


