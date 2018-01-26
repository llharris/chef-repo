#
# Cookbook:: wisa
# Recipe:: web
#
# Copyright:: 2018, The Authors, All Rights Reserved.


# Enable IIS Role
dsc_script 'Web-Server' do
  code <<-EOF
  WindowsFeature InstallWebServer
  {
    Name = "Web-Server"
    Ensure = "Present"
  }
  EOF
end

# Install ASP.NET 4.5
dsc_script 'Web-Asp-Net45' do
  code <<-EOF
  WindowsFeature InstallDotNet45
  {
    Name = "Web-Asp-Net45"
    Ensure = "Present"
  }
  EOF
end
