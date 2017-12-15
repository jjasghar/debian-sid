#
# Cookbook Name:: debian-sid
# Spec:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

# The following are only examples, check out https://github.com/chef/inspec/tree/master/docs
# for everything you can do.

describe port(80) do
  it { should_not be_listening }
end

describe file('/etc/apt/sources.list') do
  its('content') { should match(%r{sid main}) }
end

describe package('apt-listbugs') do
  it { should be_installed }
end

describe package('apt-listchanges') do
  it { should be_installed }
end