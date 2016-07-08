class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :company
      t.string :neighborhood
      t.string :address
      t.string :phone

      t.timestamps null: false
    end
  end
end
