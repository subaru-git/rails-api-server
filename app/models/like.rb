class Like < ApplicationRecord
  belongs_to :user
  belongs_to :article
  validates :user, presence: true, uniqueness: { scope: [:article] }
  validates :article, presence: true
end
