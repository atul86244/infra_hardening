#
# Cookbook Name:: infra_hardening
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

registry_key 'HKLM\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services' do
  values [{
    :name => 'fPromptForPassword',
    :type => :dword,
    :data => 1
  }, {
  	:name => 'MinEncryptionLevel',
  	:type => :dword,
  	:data => 3
  }]
end

registry_key 'HKLM\SYSTEM\ControlSet001\Control\Terminal Server\Wds\rdpwd' do
  values [{
    :name => 'MinEncryptionLevel',
    :type => :dword,
    :data => 3
  }]
end