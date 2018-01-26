# # encoding: utf-8

# Inspec test for recipe wisa::database

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

# Test database installation

describe service ('MSSQL$SQLEXPRESS') do
  it { should be_installed }
  it { should be_running }
end
