class AddForeignKeyToClients < ActiveRecord::Migration[6.1]
  def change
    add_reference :clients, :user, foreign_key: true
  end
end
