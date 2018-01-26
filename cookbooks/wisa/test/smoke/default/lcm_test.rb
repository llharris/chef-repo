# # encoding: utf-8

# Inspec test for recipe wisa::lcm

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe command 'Get-DscLocalConfigurationManager | select -ExpandProperty "ConfigurationMode"' do
  its('stdout') { should match /ApplyOnly/ }
end
