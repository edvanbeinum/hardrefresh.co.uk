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

  describe "when browser and platform are found" do
    before {
      load "#{Rails.root}/db/seeds.rb"
      @ins = @instruction.get_instructions('firefox', 'macintosh')
    }
    subject { @ins }
    it { should be_valid }
  end

  describe "when platofrm is Windows NT" do
    before {
      load "#{Rails.root}/db/seeds.rb"
      @ins = @instruction.get_instructions('firefox', 'windows nt 5.1')
    }
    subject { @ins }
    it { should be_valid }
  end

  describe "when platofrm is Windows NT and browser is IE" do
    before {
      load "#{Rails.root}/db/seeds.rb"
      @ins = @instruction.get_instructions('internet explorer', 'windows nt 5.1')
    }
    subject { @ins }
    it { should be_valid }
  end


  describe "when browser and platform are not found" do
    before {
      load "#{Rails.root}/db/seeds.rb"
      @ins = @instruction.get_instructions('test', 'test')
    }
    subject { @ins }
    it { should be_nil }
  end

end
