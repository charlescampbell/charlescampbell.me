class AddDisplayToSocials < ActiveRecord::Migration[5.2]
  def change
    add_column :socials, :display, :string
    add_column :socials, :position, :string
  end
end
