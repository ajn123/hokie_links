# == Schema Information
#
# Table name: notes
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  course_id   :integer
#  created_at  :datetime
#  updated_at  :datetime
#

require 'rails_helper'

RSpec.describe Note, :type => :model do

  before do
    @note = Note.create(title: "title", description: 'description')
  end

  subject { @note }

  it { should_not respond_to(:name) }
  it { should respond_to(:title) }
  it { should respond_to(:description) }

  it { should be_valid }

  describe "invalid title" do
    before { @note.title = "" }
    it { should be_invalid }
  end

  describe "invalid description" do
    before { @note.description = "" }
    it { should be_invalid }
  end

end
