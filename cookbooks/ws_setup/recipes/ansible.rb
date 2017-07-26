package 'Install software-propteries-common for ubuntu' do
  package_name 'software-properties-common'
end
  
apt_repository 'ansible' do
  uri	'ppa:ansible/ansible'
  components ['main', 'stable']
  key '93C4A3FD7BB9C367'
end

apt_update

package 'Install Ansible' do
  package_name 'ansible'
end

