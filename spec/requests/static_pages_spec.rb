require 'spec_helper'

describe "Static pages" do

	let(:base_title) { "NewCo" }

  describe "Home page" do
    it "should have the content 'NewCo'" do
      visit '/static_pages/home'
      expect(page).to have_content('NewCo')
    end
    it "should have the right title" do
    	visit '/static_pages/home'
    	expect(page).to have_title("#{base_title} | Home")
    end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
    it "should have the right title" do
    	visit '/static_pages/help'
    	expect(page).to have_title("#{base_title} | Help")
    end
  end

  describe "Menu page" do
    it "should have the content 'Menu'" do
      visit '/static_pages/menu'
      expect(page).to have_content('Menu')
    end
   	it "should have the right title" do
    	visit '/static_pages/menu'
    	expect(page).to have_title("#{base_title} | Menu")
    end
  end

  describe "Contact page" do
    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact')
    end
   	it "should have the right title" do
    	visit '/static_pages/contact'
    	expect(page).to have_title("#{base_title} | Contact")
    end
  end
end