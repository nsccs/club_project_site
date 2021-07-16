class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.integer :team_size_limit

      t.timestamps
    end
  end
end
