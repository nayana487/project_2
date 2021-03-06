class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :email_id
      t.references :instructor, index: true, foreign_key: true
    end
  end
end
