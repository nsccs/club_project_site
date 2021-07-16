class AddClientIdForeignKeyToProjects < ActiveRecord::Migration[6.1]
  def change
    add_reference :projects, :client, foreign_key: true
  end
end
