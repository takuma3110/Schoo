class UsersController < ApplicationController

  def index
  end

  def show
    @curriculums = Curriculum.where(user_id: current_user.id).order('created_at DESC').limit(12)
  end

end
