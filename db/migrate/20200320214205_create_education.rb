class CreateEducation < ActiveRecord::Migration[5.2]
  def change
    create_table :educations do |t|
      t.string :unit
      t.string :grade
      t.string :description

      t.belongs_to :academic_year
    end
  end
end
