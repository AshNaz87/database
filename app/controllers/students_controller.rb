class StudentsController < ApplicationController
	before_action :find_student, only: [:show, :edit, :update, :destroy]

	def index
		@students = Student.order(params[:sort]).page  params[:page]
	end

	def show
	end

	def new
		@student = Student.new
	end

	def edit
	end

	def create
		@student = Student.new(student_params)
		if 
			@student.save
			flash[:success] = "Successfully added student: #{@student.name}"
			redirect_to @student
		else
			flash[:alert] = "Unable to add student"
			render 'new'
		end
	end

	def update	
		if 
			@student.update_attributes(student_params)
			flash[:success] = "Successfully edited student: #{@student.name}"
			redirect_to home_path
		else
			flash[:alert] = "Unable to add student"
			render 'edit'
		end
	end

	def destroy
		@student.destroy
		flash[:success] = "Successfully deleted student: #{@student.name}"
		redirect_to home_path	 
	end

	private 

	def find_student
		@student = Student.find(params[:id])
	end

	def student_params
		params.require(:student).permit(:admission_number, :first_name, :last_name, :year, :date_of_birth, :gender, :address, :telephone_number, :books_taken)
	end
end
