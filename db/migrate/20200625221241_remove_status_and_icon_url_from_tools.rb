class RemoveStatusAndIconUrlFromTools < ActiveRecord::Migration[5.2]
  def change
    remove_column :tools, :status, :string
    remove_column :tools, :icon_url, :string
  end
end
