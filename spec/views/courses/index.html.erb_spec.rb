require 'rails_helper'

RSpec.describe "courses/index.html.erb", :type => :view do

  before do
    @course = Course.create(id: 1,
                            name: 'CS 5114',
                            description: "mastered to data structures and algorithms",
                            gpa: 2.342)
  end

  subject { page }


  before { visit courses_path }

  describe "have main content" do
    it { is_expected.to have_content("Select a class") }
  end

  describe "display a class" do
    it { is_expected.to have_content("CS 5114") }
  end

  describe "click detail" do
    before { click_link 'Details' }
    it { expect(page).to have_content('mastered to data structures and algorithms') }
  end

  describe "can go to class" do
    before { click_link 'CS 5114' }

      it "should go to class" do
        expect(page).to have_content('last semester: 2.34')
        expect(page).to_not have_content('GPA: 2.342')
      end

     it "should increase link count" do
       fill_in 'Url',         with: "http://hokielinks.herokuapp.com/courses/edit?id=42"
       fill_in "Name",        with: "Hokie Linker"
       find('#links').fill_in 'Description',    with: "world"
       expect{ click_button "Submit link" }.to change(@course.links, :count).by(1)
     end

     it "link should fail" do
       fill_in 'Url',         with: "http://hokielinks.herokuapp.com/courses/edit?id=42"
       expect{ click_button "Submit link" }.not_to change(@course.links, :count)
     end

    def submit_comment
      click_button "Submit comment"
    end

    it "should increase comments count" do
      fill_in 'Title',         with: "hello"
      find('#comments').fill_in 'Description',    with: "world"
      expect { submit_comment }.to change(@course.posts, :count).by(1)
    end

    it "comment should fail" do
      fill_in 'Title',  with: 'This is a title'
      find('#comments').fill_in 'Description',    with: ""
      expect { submit_comment }.not_to change(@course.posts, :count)
    end

    describe "note adding" do
      before { click_link 'New Note' }

      def save_note
        click_button "Save Note"
      end

      it "note should be added" do
        fill_in 'Title',  with: 'This is a title'
        fill_in 'Markdown',    with: "```\n```"
        expect { save_note }.to change(@course.notes, :count)
      end

      it "note should be faild" do
        fill_in 'Title',  with: 'This is a title'
        fill_in 'Markdown',    with: ""
        expect { save_note }.not_to change(@course.notes, :count)
      end
    end

  end
end
