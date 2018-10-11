class Like < ApplicationRecord
  belongs_to :user
  belongs_to :article
  validates :user, presence: true, uniqueness: true
  validates :article, presence: true, uniqueness: true
end
