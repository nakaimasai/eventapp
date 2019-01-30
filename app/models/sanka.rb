class Sanka < ApplicationRecord
  belongs_to :user
  belongs_to :micropost
  has_many :sankas, dependent: :destroy
  counter_culture :micropost
  validates :user_id, presence: true
  validates :micropost_id, presence: true
end
