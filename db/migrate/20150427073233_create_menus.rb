class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.references :food
      t.references :day

      t.timestamps
    end
    add_index :menus, :food_id
    add_index :menus, :day_id
  end
end
