class Micropost < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  mount_uploader :picture, PictureUploader
  validates :user_id, presence: true
  validates :title, presence: true, length: { maximum: 100 }
  validates :content, presence: true, length: { maximum: 500 }
  validate  :picture_size
  has_many :sankas, dependent: :destroy
  has_many :sanka_users, through: :sankas, source: :user

  def sanka(user)
    sankas.create(user_id: user.id)
  end

  def unsanka(user)
    sanka.find_by(user_id: user.id).destroy
  end

  def sanka?(user)
    sanka_users.include?(user)
  end

  private

   def picture_size
     if picture.size > 5.megabytes
       errors.add(:picture, "should be less than 5MB")
     end
   end
end
