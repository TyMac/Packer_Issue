require_relative 'spec_helper'
set :backend, :exec

describe file('/etc/locale.conf') do
  it { should be_file }
  its(:content) { should match LANG="en_US.UTF-8" }
end
