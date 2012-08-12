# encoding: utf-8
maintainer       "Rafael Durán Castañeda"
maintainer_email "rafadurancastaneda@gmail.com"
license          "Apache 2.0"
description      "Installs/Configures enviro"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.rst'))
version          "0.0.1"

recipe 'default', 'Common tasks for all Chef managed nodes'

depends 'apt'

%w{ ubuntu debian centos redhat }.each do |os|
  supports os
end

attribute 'enviro/vim/pkg_name',
  :display_name => 'Vim package name',
  :description  => 'Vim package name',
  :default      => 'vim'
