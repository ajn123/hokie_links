# == Schema Information
#
# Table name: courses
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :string(255)
#  teachers    :string(255)
#  gpa         :float
#  As          :float
#  Bs          :float
#  Cs          :float
#  Ds          :float
#  Fs          :float
#  created_at  :datetime
#  updated_at  :datetime
#

class Course < ActiveRecord::Base
  has_many :links
  has_many :posts
  has_many :notes
  validates :name, :description, presence: true

  # Used to make routing look nicer and not show the id.
  def to_param
    name
  end

  def grade_distribution
    { 'A' => self.As, 'B' => self.Bs, 'C' => self.Cs, 'D' => self.Ds, 'F' => self.Fs }
  end
end
