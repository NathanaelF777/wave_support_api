class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :body
      t.string :category_id

      t.timestamps
    end
  end
end
