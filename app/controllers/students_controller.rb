class StudentsController < ApplicationController
  before_action :load_student, only: [:update, :destory]

  def index
    @students = Student.all
  end

  def show
    @student = Student.includes(:courses).find(params[:id])
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_back fallback_location: root_path, notice: "Вы успешно зарегистрировались в школу"
    else
      render 'new'
    end
  end

  def update 
    if @student.update(student_update_params)
      redirect_back fallback_location: root_path, notice: "Профиль успешно обновлен"
    else
      render 'edit'
    end
  end

  def destroy
    @student.destroy
    flash[:success] = "Ученик успешно удален"
  end

  def add_student_in_course
    #какая-та логика
  end
  
  private

  def load_student
    @student ||= Student.find params[:id]
  end
  
  def student_params
    params.require(:student).premit(:name, :last_name)
  end

  def student_update_params
    params.require(:student).permit(:name, :last_name)
  end
end
