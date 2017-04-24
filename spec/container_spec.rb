require 'spec_helper'

# Workaround needed for circleCI
if ENV['CIRCLECI']
  class Docker::Container
    def remove(options={}); end
    alias_method :delete, :remove
  end
end

describe package('cmake') do
  it { should be_installed }
end

describe package('gcc-c++') do
  it { should be_installed }
end


describe package('gcc') do
  it { should be_installed }
end
