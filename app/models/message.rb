class Message < ActiveRecord::Base
  #how to make something optional but also validate format
  validates_format_of :url, :with => URI.regexp(['http'])
  validates :author, presence: true, length: {maximum: 25}
  validates :content, presence: true, length: {maximum: 80}
end