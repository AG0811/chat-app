class Room < ApplicationRecord
  has_many :room_users
  has_many :users, through: :room_users

  # バリデーション：ルーム名が存在(presence)の場合のみ作成可(true)
  validates :name, presence: true
end
