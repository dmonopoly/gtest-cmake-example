require 'spec_helper'

describe package('cmake') do
  it { should be_installed }
end

describe package('gcc-c++') do
  it { should be_installed }
end


describe package('gcc') do
  it { should be_installed }
end
