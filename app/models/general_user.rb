class GeneralUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
 has_many :submissions, dependent: :destroy
 has_many :comments, dependent: :destroy
 has_many :greats, dependent: :destroy

end
