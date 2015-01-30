class CreateModels < ActiveRecord::Migration
  def change
    create_table :models do |t|
      t.string :name
      t.text :text
      t.boolean :pay
      t.string :file
      t.integer :count_see
      t.integer :user_id
      t.integer :count_down
      t.string :image

      t.timestamps
    end
  end
end
