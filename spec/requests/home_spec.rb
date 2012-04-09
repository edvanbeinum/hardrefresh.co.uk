require 'spec_helper'

describe "Home" do
  describe "Home page" do
    it "should have the content 'My Browser'" do
      visit '/home/index'
      page.should have_content('My Browser')
    end

    it "should have the title 'How to refresh my browser | Hard Refresh'" do
      visit '/home/index'
      page.should have_selector('title', :text => 'How to refresh my browser | Hard Refresh')
    end
  end
end
