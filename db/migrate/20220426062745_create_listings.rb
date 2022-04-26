class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.float :fee
      t.string :slogan
      t.text :description

      t.timestamps
    end
  end
end
