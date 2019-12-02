class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :sex
      t.date :dateofbirth
      t.bigint :cellphonenumber
      t.string :address
      t.references :highschool, null: false, foreign_key: true
      t.references :testcenter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
