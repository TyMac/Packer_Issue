require_relative 'spec_helper'
set :backend, :exec

describe package('NetworkManager') do
  it { should be_installed }
end
