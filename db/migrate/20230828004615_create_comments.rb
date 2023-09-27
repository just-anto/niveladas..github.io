class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :pfs_number
      t.boolean :admin

      t.timestamps null: false
    end
  end
end
