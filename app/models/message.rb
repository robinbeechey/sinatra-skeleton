class Message < ActiveRecord::Base
  validates :title, presence: true, length: {maximum: 40}
  validates :author, presence: true, length: {maximum: 25}
  validates :content, presence: true, length: {maximum: 80}
end