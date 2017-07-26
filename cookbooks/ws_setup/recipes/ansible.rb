package 'Install software-propteries-common for ubuntu' do
  case node[:platform]
  when 'ubuntu', debian'
    package_name 'software-properties-common'
  end
end
  
case node[:platform]
when 'ubuntu', 'debian' 
  apt_repository 'ansible' do
    uri	'ppa:ansible/ansible'
    components ['main', 'stable']
  end
when 'centos'
  package 'epel-release' 
end

package 'Install Ansible' do
  package_name 'ansible'
end

