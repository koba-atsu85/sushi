class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name01
      t.string :name02
      t.string :mail
      t.string :password
      t.timestamp :create_date
      t.timestamp :update_date
      t.integer :del_flg

      t.timestamps
    end
  end
end
