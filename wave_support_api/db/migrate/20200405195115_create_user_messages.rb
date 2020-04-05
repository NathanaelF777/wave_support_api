class CreateUserMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :user_messages do |t|
      t.string :title
      t.string :body
      t.string :user_id
      t.string :ticket_id

      t.timestamps
    end
  end
end
