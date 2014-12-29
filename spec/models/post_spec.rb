# == Schema Information
#
# Table name: posts
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :string(255)
#  course_id   :integer
#  created_at  :datetime
#  updated_at  :datetime
#

require 'rails_helper'

RSpec.describe Post, :type => :model do

  before do 
    @post = Post.create(title: "hello world", description: "one world")
  end

  subject{ @post }

  it{ respond_to :title }
  it{ respond_to :description }
  it{ be_valid}

end
