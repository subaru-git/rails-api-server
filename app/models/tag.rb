class Tag < ApplicationRecord
  belongs_to :article
  validates :tag, presence: true, uniqueness: { case_sensitive: false }
end
