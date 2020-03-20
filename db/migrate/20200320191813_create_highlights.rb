class CreateHighlights < ActiveRecord::Migration[5.2]
  def change
    create_table :highlights do |t|
      t.string :title
      t.string :organisation
      t.date :start_date
      t.date :end_date
      t.string :description
      t.string :url
    end
  end
end
