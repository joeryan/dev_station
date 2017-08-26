# Cookbook:: ws_setup
# Recipe:: epel

package 'Install epel-release for redhat/centos' do
  package_name 'epel-release'
  case node[:platform]
    when 'redhat', 'centos'
      action :install
    when 'ubuntu', 'debian'
      action :nothing
    end
end

package 'Install python3' do
  case node[:platform]
    when 'redhat', 'centos'
      package_name 'python34'
    when 'ubuntu', 'debian'
      package_name 'python3'
    end
  action :install
end
