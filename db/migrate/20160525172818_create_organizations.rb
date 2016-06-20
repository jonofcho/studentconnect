class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.integer :determine
      t.string :name
      t.string :company
      t.string :current_location
      t.string :description
      t.string :weblink
      t.integer :orgadmin_id

      t.timestamps null: false
    end
  end
end
