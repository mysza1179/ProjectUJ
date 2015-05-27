class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :password, null: false
      t.string :name, null: true
      t.string :lastname, null: true
      t.timestamps null: false
    end
  end
end
