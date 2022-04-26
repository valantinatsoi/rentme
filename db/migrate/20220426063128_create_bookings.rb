class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :listing, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.float :amount
      t.boolean :status
      t.text :requirements

      t.timestamps
    end
  end
end
