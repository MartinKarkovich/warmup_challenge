class CreatePost < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.string :image
      t.belongs_to :category
      t.belongs_to :user
      t.timestamps
    end
  end
end
