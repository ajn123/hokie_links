require 'rails_helper'

RSpec.describe "static_pages/index.html.erb", :type => :view do

  subject { page }

  describe "Home page" do
    before { visit root_path }
    it { should have_content('Main Content') }

    it "should have the correct links" do
      click_link "About"
      expect(page).to have_content('about')
      click_link "Contact"
      expect(page).to have_content('contact')
      click_link "Updates"
      expect(page).to have_content('updates')
    end
  end

  describe "About page" do
    before { visit about_path }

    it { should have_content('about')}
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_content('contact') }
  end

  describe "Update page" do
    before { visit updates_path }

    it { should have_content('updates') }
  end

end
