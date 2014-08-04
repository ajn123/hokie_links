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

class Post < ActiveRecord::Base
  belongs_to :course

  validates :title, :description, presence: true

end
