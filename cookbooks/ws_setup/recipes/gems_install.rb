file "#{ENV['HOME']}/.gemrc" do
  content 'gem: --no-ri --no-rdoc'
end

bash 'bundler and rails gem installation' do
  cwd "#{ENV['HOME']}"
  code <<-EOH
    gem install bundler
    gem install rails
  EOH
end

