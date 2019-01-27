class Sanka < ApplicationRecord
  belongs_to :user
  belongs_to :micropost, optional: true
  counter_culture :micropost
  validates :user_id, presence: true
  validates :micropost_id, presence: true
end
