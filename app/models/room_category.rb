class RoomCategory < ActiveRecord::Base
  validates :name, uniqueness: true, presence: true

  has_many :rooms, foreign_key: :category_id, inverse_of: :category, dependent: :destroy

  def free_room(arrival, departure)
    occupied_rooms = rooms.joins { reservations }.where { {reservations => sift(:overlapping_reservations, arrival, departure)} }
    rooms.where { id.not_in occupied_rooms.select { id } }.first
  end
end
