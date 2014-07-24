class Course < ActiveRecord::Base
  has_many :links
  has_many :posts
  validates :name, :description, presence: true

  def grade_distribution
    { 'A' => self.As, 'B' => self.Bs, 'C' => self.Cs, 'D' => self.Ds, 'F' => self.Fs }
  end
end
