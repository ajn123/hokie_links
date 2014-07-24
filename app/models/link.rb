class Link < ActiveRecord::Base
  belongs_to :course

  validates :url, :format => URI::regexp(%w(http https)), uniqueness: true
  validates :description, presence: true


end


class UrlValidator < ActiveModel::EachValidator

  def validate_each(record, attribute, value)
    valid = begin
      URI.parse(value).kind_of?(URI::HTTP)
    rescue URI::InvalidURIError
      false
    end
    unless valid
      record.errors[attribute] << (options[:message] || "is an invalid URL")
    end
  end

end