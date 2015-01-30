class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :name
      t.string :text
      t.integer :count_see
      t.string :picture

      t.timestamps
    end
  end
end
