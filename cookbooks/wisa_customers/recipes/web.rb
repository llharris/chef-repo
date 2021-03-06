#
# Cookbook:: wisa_customers
# Recipe:: web
#
# Copyright:: 2018, The Authors, All Rights Reserved.

# Remove the default IIS web site.
include_recipe 'iis::remove_default_site'

# Define the local app and site locations.
app_directory = 'C:\inetpub\apps\Customers'
site_directory = 'C:\inetpub\sites\Customers'

# Download the built Customers application and unzip it to the app directory.
windows_zipfile app_directory do
  source 'https://github.com/learn-chef/manage-a-web-app-windows/releases/download/v0.1.0/Customers.zip'
  action :unzip
  not_if { ::File.exists?(app_directory) }
end

# Create the Products app pool.
iis_pool 'Products' do
  runtime_version '4.0'
  action :add
end

# Create the site directory and give IIS_IUSRS read rights.
directory site_directory do
  rights :read, 'IIS_IUSRS'
  recursive true
  action :create
end

# Create the Customers site.
iis_site 'Customers' do
  protocol :http
  port 80
  path site_directory
  application_pool 'Products'
  action [:add, :start]
end

# Create the Customers app.
iis_app 'Customers' do
  application_pool 'Products'
  path '/Products'
  physical_path app_directory
  action :add
end
