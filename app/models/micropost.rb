class Micropost < ApplicationRecord
  belongs_to :user
  belongs_to :in_reply_to, class_name: "User", optional: true

  validates :content, presence: true, length: { maximum: 140 }
  validates :user_id, presence: true
end

