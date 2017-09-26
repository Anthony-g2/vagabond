class Post < ApplicationRecord
  belongs_to :city, optional: true
  belongs_to :user, optional: true
  has_many :comments, dependent: :destroy

  validates :title, presence: true, length: {maximum: 200, minimum: 1}
  validates :message, presence: true

end
