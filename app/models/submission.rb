class Submission < ApplicationRecord
  has_many :tags, dependent: :destroy
  belongs_to :general_user
  attachment :image
  has_many :commints
  has_many :greats, dependent: :destroy

  def greated_by?(general_user)
    greates.where(general_user_id: general_user.id).exists?
  end
end
