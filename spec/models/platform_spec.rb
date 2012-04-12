require 'spec_helper'

describe Platform do
  before { @platform = Platform.new(name: 'Mac OSX') }
  
  subject { @platform }
  
  it { should be_valid }
  it { should respond_to(:name) }
end
