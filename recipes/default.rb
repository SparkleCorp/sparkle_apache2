#
# Cookbook:: sparkle_apache2
# Recipe:: default
#

apt_update 'update'

#apache2_install 'default_install'
include_recipe 'apache2::default'
service 'apache2' do
  extend Apache2::Cookbook::Helpers
  service_name lazy { apache_platform_service_name }
  supports restart: true, status: true, reload: true
  action :nothing
end
