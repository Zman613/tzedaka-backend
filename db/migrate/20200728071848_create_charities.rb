class CreateCharities < ActiveRecord::Migration[6.0]
  def change
    create_table :charities do |t|
      t.string :name
      t.string :photo
      t.integer :balance

      t.timestamps
    end
  end
end
