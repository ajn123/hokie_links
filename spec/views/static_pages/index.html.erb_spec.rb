require 'rails_helper'

RSpec.describe "static_pages/index.html.erb", :type => :view do

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/'
      expect(page).to have_content('Main Content')
    end
  end
end
