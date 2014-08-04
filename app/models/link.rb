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

class UrlValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    begin
      require 'net/http'
      Net::HTTP.get(URI.parse(value))
    rescue Exception
      record.errors.add(:specific_url, "invalid url")
    end
  end
end


class Link < ActiveRecord::Base
  belongs_to :course

  validates :url, :presence => true, :url => true
  validates :name, :description, presence: true

end


