class CreateAdminMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :admin_messages do |t|
      t.string :title
      t.string :body
      t.string :admin_id
      t.string :ticket_id

      t.timestamps
    end
  end
end
