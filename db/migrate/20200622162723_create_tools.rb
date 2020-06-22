class CreateTools < ActiveRecord::Migration[5.2]
  def change
    create_table :tools do |t|
      t.string :tool
      t.string :colour
      t.string :status
      t.string :icon_url

      t.timestamps
    end
  end
end
