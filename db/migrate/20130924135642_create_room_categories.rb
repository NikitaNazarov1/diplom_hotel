class CreateRoomCategories < ActiveRecord::Migration
  def change
    create_table :room_categories do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
