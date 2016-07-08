class CreatePercentages < ActiveRecord::Migration
  def change
    create_table :percentages do |t|
      t.integer :percent

      t.timestamps null: false
    end
  end
end
