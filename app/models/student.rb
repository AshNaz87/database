class Student < ApplicationRecord
	validates :admission_number, presence: true
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :year, presence: true
	validates :date_of_birth, presence: true, format: { with: /\d{2}\/\d{2}\/\d{4}/, message: 'Please enter the student\'s date of birth in this format: dd/mm/yyyy' }
	validates :gender, presence: true
	validates :address, presence: true
	validates :telephone_number, presence: true, format: { with: /(\d{11})|(\d{3}\s\d{4}\s\d{4})|(\d{5}\s\d{6})/, message: 'Use 11 digits for mobile phones, and this format: 020 8575 5639 for landlines' }
	validates :books_taken, presence: true

	def name
		[first_name, last_name].join(' ')
	end
end
