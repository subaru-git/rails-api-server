class Path < ApplicationRecord
  belongs_to :article
  validates :path, presence: true, uniqueness: { case_sensitive: false }
end
