class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :admission_number
      t.string :first_name
      t.string :last_name
      t.integer :year
      t.string :date_of_birth
      t.string :gender
      t.text :address
      t.string :books_taken

      t.timestamps
    end
  end
end
