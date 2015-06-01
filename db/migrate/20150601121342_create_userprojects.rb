class CreateUserprojects < ActiveRecord::Migration
  def change
    create_table :userprojects do |t|
      t.string :name
      t.text :desc
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
