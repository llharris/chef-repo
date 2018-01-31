name 'wisa_customers'
maintainer 'Lee Harris'
maintainer_email 'lee@demo.local'
license 'MIT'
description 'Installs/Configures wisa_customers'
long_description 'Installs/Configures wisa_customers'
version '0.1.0'
supports 'windows'
chef_version '>= 12.1' if respond_to?(:chef_version)

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/wisa_customers/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/wisa_customers'

depends 'wisa'
depends 'iis', '~> 6.7.2'
