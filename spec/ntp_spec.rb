require_relative 'spec_helper'
set :backend, :exec

describe package('ntp') do
  it { should be_installed }
end
