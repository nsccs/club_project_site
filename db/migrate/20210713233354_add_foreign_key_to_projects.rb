class AddForeignKeyToProjects < ActiveRecord::Migration[6.1]
  def change
    add_reference :projects, :status, foreign_key: true
    add_reference :projects, :project_type, foreign_key: true
  end
end
