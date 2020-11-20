class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.string :photo
      t.integer :role

      t.timestamps
    end
  end
end
