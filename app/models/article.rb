class Article < ApplicationRecord
  validates :content, presence: true
  validates :title, presence: true
end
