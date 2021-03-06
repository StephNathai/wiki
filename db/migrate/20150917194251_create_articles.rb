class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.references :user, index: true, foreign_key: true
      t.references :tag, index: true, foreign_key: true
      t.text :content
      t.string :title

      t.timestamps null: false
    end
  end
end
