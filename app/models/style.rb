class Style < ActiveRecord::Base
  belongs_to :designer
  has_many :likes

  def like_user(user)
    likes.find_by(user_id: user)
  end
end
