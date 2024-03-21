class CoursesController < ApplicationController
  before_action :load_course, only: [:update, :destory]
  
  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      redirect_back fallback_location: root_path, notice: "Курс успешно создан"
    else
      render 'new'
    end
  end

  def update
    if @course.update(course_update_params)
      redirect_back fallback_location: root_path, notice: "Курс успешно обновлен"
    else
      render 'edit'
    end
  end

  def destroy
    @course.destroy
    flash[:success] = "Курс успешно удален"
  end

  private

  def load_course
    @course ||= Course.find params[:id]
  end

  def course_update_params
    params.require(:course).permit(:title, :description)
  end

  def course_params
    params.require(:course).premit(:title, :description)
  end

end
