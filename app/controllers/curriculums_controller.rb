class CurriculumsController < ApplicationController
  def index
    @curriculums = Curriculum.all
  end

  def new
  end

  def create
  end
end
