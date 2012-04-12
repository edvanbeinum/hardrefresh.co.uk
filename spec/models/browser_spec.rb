require 'spec_helper'

describe Browser do

  before { @browser = Browser.new(name: 'Firefox') }

  subject { @browser }

  it { should be_valid }
  it { should respond_to(:name) }

end
