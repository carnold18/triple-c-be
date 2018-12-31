class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.boolean :residential
      t.boolean :commercial
      t.integer :residential_electric_use
      t.integer :residential_electric_expenditure
      t.integer :residential_gas_use
      t.integer :residential_gas_expenditure
      t.integer :commercial_electric_use
      t.integer :commercial_electric_expenditure
      t.integer :commercial_gas_use
      t.integer :commercial_gas_expenditure
      t.integer :city_fuel_use_diesel
      t.integer :city_fuel_use_gas
      t.string :zip_code
      t.string :name

      t.timestamps
    end
  end
end
