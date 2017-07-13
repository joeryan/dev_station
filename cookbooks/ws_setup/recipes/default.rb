#
# Cookbook:: ws_setup
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
file "#{ENV['HOME']}/test.txt" do
  content 'This file was created by chef'
end

packs = ['curl', 'tree']
packs.each do |pack|
  apt_package pack do
    action :install
  end
end

include_recipe 'ws_setup::rails_dev'
