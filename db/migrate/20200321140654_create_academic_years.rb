class CreateAcademicYears < ActiveRecord::Migration[5.2]
  def change
    create_table :academic_years do |t|
      t.string :title
      t.string :grade
      t.belongs_to :qualification

      t.timestamps
    end
  end
end
