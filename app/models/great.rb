class Great < ApplicationRecord
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         belongs_to :general_user
         belongs_to :submission

  
end
