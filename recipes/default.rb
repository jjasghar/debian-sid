#
# Cookbook Name:: debian-sid
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

cookbook_file '/etc/apt/sources.list' do
  source 'sources.list'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

include_recipe "apt"

# Per the best practices at: https://wiki.debian.org/DebianUnstable
package 'apt-listbugs' do
  action :install
end

package 'apt-listchanges' do
  action :install
end

package 'weechat' do
  action :install
end

cron 'upgrade those packages' do
  hour '*/6'
  minute '0'
  day '*'
  month '*'
  weekday '*'
  user 'root'
  command 'apt-get upgrade'
end
