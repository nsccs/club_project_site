class AddUserRefToProjectUsers < ActiveRecord::Migration[6.1]
  def change
    add_reference :project_users, :project, null: false, foreign_key: true
    add_reference :project_users, :user, null: false, foreign_key: true
  end
end
