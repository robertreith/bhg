class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.integer :num_of_units
      t.references :property
      t.references :percentage

      t.timestamps null: false
    end
  end
end
