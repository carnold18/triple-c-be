class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.boolean :residential
      t.boolean :commercial
      t.string :zip_code
      t.string :city_name
      t.string :state_abbrev
      t.integer :user_id

      t.timestamps
    end
  end
end
