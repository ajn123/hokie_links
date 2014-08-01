class UrlValidator < ActiveModel::EachValidator

  def validate_each(record, attribute, value)
    begin
      require 'net/http'
      result = Net::HTTP.get(URI.parse(value))
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


