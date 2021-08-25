class GeneralUser < ApplicationRecord
  def follow(general_user_id)
    relationships.create(followed_id: general_user_id)
  end

  def unfollow(general_user_id)
    relationships.find_by(followed_id: general_user_id).destroy
  end

  def following?(general_user)
    followings.include?(general_user)
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :submissions, dependent: :destroy
  has_many :commints, dependent: :destroy
  has_many :greats, dependent: :destroy
  has_many :reverse_of_relationships, class_name: 'Relationship', foreign_key: 'followed_id', dependent: :destroy
  has_many :followers, through: :reverse_of_relationships, source: :follower
  has_many :relationships, class_name: 'Relationship', foreign_key: 'follower_id', dependent: :destroy
  has_many :followings, through: :relationships, source: :followed
end
