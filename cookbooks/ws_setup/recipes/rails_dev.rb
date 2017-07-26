
packs = ['build-essential', 'git-core', 'curl', 'openssl', 'libssl-dev', 'libcurl4-openssl-dev', 'zlib1g', 'zlib1g-dev', 'libreadline-dev', 'libreadline6', 'libreadline6-dev', 'libyaml-dev', 'libsqlite3-dev', 'libsqlite3-0', 'sqlite3', 'libxml2-dev', 'libxslt1-dev', 'python-software-properties', 'libffi-dev', 'libgdm-dev', 'libncurses5-dev', 'automake', 'autoconf', 'libtool', 'bison', 'postgresql', 'postgresql-contrib', 'libpq-dev', 'pgadmin3', 'libc6-dev', 'nodejs', 'imagemagick']

packs.each do |pack|
  apt_package pack
end


apt_repository 'rvm' do
  repo_name 'rvm'
  uri 'ppa:rael-gc/rvm'
end


apt_package 'rvm'



bash 'ruby version installation' do
  cwd "#{ENV['HOME']}"
  code <<-EOH
    /usr/share/rvm/bin/rvm install 2.4.1;
    /usr/share/rvm/bin/rvm use 2.4.1 --default
  EOH
end

bash 'bundler and rails gem installation' do
  cwd "#{ENV['HOME']}"
  code <<-EOH
    /usr/share/rvm/rubies/ruby-2.4.1/bin/gem install bundler
    /usr/share/rvm/rubies/ruby-2.4.1/bin/gem install rails
  EOH
end

