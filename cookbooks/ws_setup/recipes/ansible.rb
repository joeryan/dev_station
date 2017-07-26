package 'Install software-propteries-common for ubuntu' do
  package_name 'software-properties-common'
end
  
apt_repository 'ansible' do
  uri	'ppa:ansible/ansible'
  components ['main', 'stable']
end

package 'Install Ansible' do
  package_name 'ansible'
end

