class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip_code
      t.integer :npi
      t.integer :license

      t.timestamps
    end
  end
end
