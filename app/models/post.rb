class Post < ActiveRecord::Base
  belongs_to :course

  validates :title, :description, presence: true

end
