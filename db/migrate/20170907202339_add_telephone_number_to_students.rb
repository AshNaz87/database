class AddTelephoneNumberToStudents < ActiveRecord::Migration[5.1]
  def change
  	add_column :students, :telephone_number, :string
  end
end
