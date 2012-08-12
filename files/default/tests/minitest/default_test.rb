require 'minitest/spec'

describe_recipe 'enviro::default' do

  # It's often convenient to load these includes in a separate
  # helper along with
  # your own helper methods, but here we just include them directly:
  include MiniTest::Chef::Assertions
  include MiniTest::Chef::Context
  include MiniTest::Chef::Resources

  it 'installed the vim package' do
    package(node['enviro']['vim']['pkg_name']).must_be_installed
  end

  it 'update apt and created success stamp file on Debian/Ubuntu' do
    if %w{ubuntu debian}.include? node['platform'] then
      file('/var/lib/apt/periodic/update-success-stamp').must_exist
    end
  end

end
