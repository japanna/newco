require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
    it "should have the content 'NewCo'" do
      visit '/static_pages/home'
      expect(page).to have_content('NewCo')
    end
    it "should have the right title" do
    	visit '/static_pages/home'
    	expect(page).to have_title('NewCo | Home')
    end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
    it "should have the right title" do
    	visit '/static_pages/help'
    	expect(page).to have_title('NewCo | Help')
    end
  end

  describe "Menu page" do
    it "should have the content 'Menu'" do
      visit '/static_pages/menu'
      expect(page).to have_content('Menu')
    end
   	it "should have the right title" do
    	visit '/static_pages/menu'
    	expect(page).to have_title('NewCo | Menu')
    end
  end
end