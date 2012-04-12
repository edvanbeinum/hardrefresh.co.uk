require 'spec_helper'

describe Instruction do

  before { @instruction = Instruction.new(content: "test") }

  subject { @instruction }

  it { should respond_to(:content) }
  it { should be_valid }

  describe "when content not present" do
    before { @instruction.content = "" }
    it { should_not be_valid }
  end
end
