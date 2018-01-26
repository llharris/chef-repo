name 'wisa'
maintainer 'Lee Harris'
maintainer_email 'lee@demo.local'
license 'MIT'
description 'Installs/Configures wisa'
long_description 'Installs/Configures wisa'
version '0.1.0'
chef_version '>= 12.1' if respond_to?(:chef_version)
supports 'windows'
depends 'sql_server', '~> 5.3'

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
issues_url 'https://github.com/llharris/chef-repo/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
source_url 'https://github.com/llharris/chef-repo'
