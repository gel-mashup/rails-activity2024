class Post < ApplicationRecord
  validates :author, presence: true

  has_many :comments
  belongs_to :user

  scope :author_gel, -> { where(author: "gel") }
end
