#
# Cookbook:: wisa
# Recipe:: lcm
#
# Copyright:: 2018, The Authors, All Rights Reserved.

powershell_script 'Configure the LCM' do
  code <<-EOF
    Configuration ConfigLCM
    {
      Node "localhost"
      {
        LocalConfigurationManager
        {
          ConfigurationMode = "ApplyOnly"
          RebootNodeIfNeeded = $false
        }
      }
    }
    ConfigLCM -OutputPath "#{Chef::Config[:file_cache_path]}\\DSC_LCM"
    Set-DscLocalConfigurationManager -Path "#{Chef::Config[:file_cache_path]}\\DSC_LCM"
  EOF
  not_if '(Get-DscLocalConfigurationManager | select -ExpandProperty "ConfigurationMode") -eq "ApplyOnly"'
end
