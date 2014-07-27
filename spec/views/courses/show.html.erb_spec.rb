require 'rails_helper'

RSpec.describe "courses/show.html.erb", :type => :view do

  before do
    @course = Course.create(name: 'CS 5114', description: "mastered to data structures and algorithms", gpa: 2.342)
  end

  subject { page }

  before { visit courses_path}

  describe "have main content" do
    it { is_expected.to have_content("Select a class") }
  end

  describe "display a class" do
    it { is_expected.to have_content("CS 5114") }

  end

  describe "can go to class" do
    it "should go to class" do
      click_link 'CS 5114'
      expect(page).to have_content('last semester: 2.34') # WTF???
      expect(page).to_not have_content('GPA: 2.342')

    end
  end
end
