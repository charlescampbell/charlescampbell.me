class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :friendly_name
      t.string :url
    end
  end
end
