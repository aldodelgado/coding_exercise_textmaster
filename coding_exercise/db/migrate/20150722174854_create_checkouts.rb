class CreateCheckouts < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.decimal :total, precision: 10, scale: 2
      t.timestamps null: false
    end
  end
end
