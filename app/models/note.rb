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

class Note < ActiveRecord::Base
  belongs_to :course

  validates :title, :description, presence: true


end
