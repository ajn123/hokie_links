require 'rails_helper'

RSpec.describe "courses/show.html.erb", :type => :view do

  before do
    @course = Course.create(id: 0, name: 'CS 5114', description: "mastered to data structures and algorithms", gpa: 2.342)
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
    before { click_link 'CS 5114' }

    it "should go to class" do
      expect(page).to have_content('last semester: 2.34') # WTF???
      expect(page).to_not have_content('GPA: 2.342')

    end

     it "should increase link count" do
       fill_in 'Url',         with: "http://hokielinks.herokuapp.com/courses/edit?id=42"
       fill_in "Name",        with: "Hokie Linker"

       expect{click_button "Submit link"}.to change(@course.links, :count).by(1)
     end

     it "should not increase link count" do
       fill_in 'Url',         with: "http://hokielinks.herokuapp.com/courses/edit?id=42"
       expect{click_button "Submit link"}.not_to change(@course.links, :count)

     end
  end


end
