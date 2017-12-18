name 'debian-sid'
maintainer 'JJ Asghar'
maintainer_email 'jj@chef.io'
license 'Apache-2.0'
description 'Installs/Configures debian-sid'
long_description 'Installs/Configures debian-sid'
version '0.1.2'

chef_version '>= 12'

depends 'apt'

%w(debian).each do |os|
  supports os
end

issues_url 'https://github.com/jjasghar/debian-sid/issues'
source_url 'https://github.com/jjasghar/debian-sid'
