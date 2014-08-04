# == Schema Information
#
# Table name: links
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  url         :string(255)
#  description :string(255)
#  course_id   :integer
#  created_at  :datetime
#  updated_at  :datetime
#

require 'rails_helper'

RSpec.describe Link, :type => :model do

  before do
    @link = Link.new(url: "http://www.railstutorial.org",
                     name: "rails tut",
                     description: "hi howard")
  end

  subject{ @link }

  it { expect(@link).to respond_to(:url)}
  it { expect(@link).to respond_to(:description)}
  it { expect(@link).to respond_to(:name)}

  it { should be_valid}

  describe "invalid url" do
    before { @link.url = "http://www.utnaoeoe.com" }
      it "should not work" do
        expect(@link).not_to be_valid
      end
  end

  describe "valid url" do
    before { @link.url = 'http://www.railstutorial.org/book/modeling_users'}
      it { expect(@link).to be_valid }
  end

  describe "invalid description" do
    before { @link.description = "" }
      it { expect(@link).not_to be_valid }
  end

end
