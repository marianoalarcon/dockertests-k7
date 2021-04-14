class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :last_name
      t.integer :role
      t.string :position
      t.boolean :active
      t.string :private_number

      t.timestamps
    end
  end
end
