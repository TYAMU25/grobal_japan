class Relationship < ApplicationRecord
  belongs_to :follower, class_name: 'GeneralUser'
  belongs_to :followed, class_name: 'GeneralUser'
end
