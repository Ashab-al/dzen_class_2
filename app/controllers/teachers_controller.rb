class TeachersController < ApplicationController
  before_action :load_teacher, only: [:update, :destroy]

  def index
    @teachers = Teacher.all
  end

  def show
    @teacher = Teacher.includes(:courses).find(params[:id])
  end

  def create
    @teacher = Teacher.new(teacher_params)
    if @teacher.save
      redirect_back fallback_location: root_path, notice: "Вы успешно зарегистрировались в школу"
    else
      render 'new'
    end
  end

  def update 
    if @teacher.update(teacher_update_params)
      redirect_back fallback_location: root_path, notice: "Профиль успешно обновлен"
    else
      render 'edit'
    end
  end

  def destroy
    @teacher.destroy
    flash[:success] = "Учитель успешно удален"
  end
  
  private

  def load_teacher
    @teacher ||= Teacher.find params[:id]
  end
  
  def teacher_params
    params.require(:teacher).premit(:name, :last_name)
  end

  def teacher_update_params
    params.require(:question).permit(:name, :last_name)
  end  
end
