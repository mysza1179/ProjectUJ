class CreateMainPages < ActiveRecord::Migration
  def change
    create_table :main_pages do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
