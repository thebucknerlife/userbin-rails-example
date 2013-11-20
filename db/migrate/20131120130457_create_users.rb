class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :userbin_id
      t.string :email
      t.string :image

      t.timestamps
    end

    add_index :users, :userbin_id
  end
end
