class Book < ApplicationRecord
  belongs_to :user
  attachment :image
  has_many :book_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  validates :title, presence: true
  validates :body, presence: true
  validates :body,    length: { maximum: 200 }      # 「75文字以下」

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

end
