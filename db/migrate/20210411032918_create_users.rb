class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :last_name
      t.string :position
      t.string :uuid
      t.boolean :active
      t.enum :rol

      t.timestamps
    end
  end
end
