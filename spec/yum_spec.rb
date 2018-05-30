require_relative 'spec_helper'
set :backend, :exec

# Testing basic yum commands
# describe command('yum -y update') do
#   its(:exit_status) { should eq 0 }
# end

describe command('yum -y install lynx') do
  its(:exit_status) { should eq 0 }
end

describe command('yum -y erase lynx') do
  its(:exit_status) { should eq 0 }
end
