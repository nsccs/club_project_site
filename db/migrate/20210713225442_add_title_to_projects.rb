class AddTitleToProjects < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :title, :string
  end
end
