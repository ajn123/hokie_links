require 'rails_helper'

RSpec.describe "searches/index.html.erb", :type => :view do


  before do
    @course = Course.create(id: 1,
                            name: 'CS 2114',
                            description: "mastered to data structures and algorithms",
                            gpa: 2.342)
  end

  subject { page }

  describe "should have search capability" do

    before { visit root_path }

    it "should find CS 2114" do
      fill_in 'Search for classes...', with: 'CS 2114'
      click_button 'Search'
      expect(page).to have_content('CS 2114')
    end

    it "search should have 0 results" do
      fill_in 'Search for classes...', with: 'aoeu aoeu'
      click_button 'Search'
      expect(page).to have_content('0 Results')
    end
  end

end
