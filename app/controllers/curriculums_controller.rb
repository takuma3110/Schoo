class CurriculumsController < ApplicationController
before_action :move_to_index, except: [:index, :show, :search]
# before_action :move_to_index, except: :show

  def index
    @genres = Genre.all
    @curriculums = Curriculum.order('created_at DESC').limit(12)
  end

  def new
    @curriculum = Curriculum.new
  end

  def show
    @curriculum = Curriculum.find(params[:id])
  end

  def create
    Curriculum.create(name: curriculum_params[:name], genre: curriculum_params[:genre], month: curriculum_params[:month], day: curriculum_params[:day], fee: curriculum_params[:fee], image: curriculum_params[:image], detail: curriculum_params[:detail], user_id: current_user.id, t_name: current_user.name, pref_name: curriculum_params[:pref_name])
  end

  def search
    @curriculums = Curriculum.where('name LIKE(?)', "%#{params[:keyword]}%").limit(12)
  end

  private
  def curriculum_params
    params.require(:curriculum).permit(:name,:pref_name,:genre,:month,:day,:fee,:image,:detail,:t_name,:user_id)
  end

  def move_to_index
      redirect_to action: :index unless current_user.teacher_flag == true
    end
end
