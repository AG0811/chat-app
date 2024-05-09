class RoomUser < ApplicationRecord
  belongs_to :room
  belongs_to :user, through: :room_users
  has_many :messages
end
