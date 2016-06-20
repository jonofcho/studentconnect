class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :grad_year
      t.string :school
      t.string :major
      t.string :current_occupation
      t.string :fav_quote
      t.integer :phone_number
      t.integer :status

      t.timestamps null: false
    end
  end
end
