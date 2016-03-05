class GenreController < ApplicationController

  def show
    @genre = Genre.find(params[:id])
    @curriculums = Curriculum.where(genre_id: @genre.id).limit(12)

  end
end
