class StudentsController < ApplicationController
def index
  @students = Student.all

end
def show1
      @students = Student.all
 end
 def show
    
      @students = Student.find(params[:id])
  
 end
def tania
  
end

def save_student

  @student = Student.new(params[:student])

  if @student.save

  render :partial => 'student', :object => @student
  #	redirect_to  show1_students_path
  else
  	render action: "tania"
  end


 end
  
end
