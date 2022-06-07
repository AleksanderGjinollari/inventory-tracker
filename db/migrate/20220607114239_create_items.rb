class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.references :account
      t.string :name
      t.integer :quantity
      t.integer :price
      t.string :photo

      t.timestamps
    end
  end
end
