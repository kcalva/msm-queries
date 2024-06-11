class MiscController < ApplicationController
  def homepage
    render({ :template => "misc_templates/home"})
  end
  def directorpage
    render({ :template => "misc_templates/directors"})
  end
  def directorinfo
    director_id = params.fetch("director_id")
    @x = Director.where({ :id => director_id }).at(0)
    @matching_movies = Movie.where({:director_id => director_id}).at(0)

    render({ :template => "misc_templates/directorInfo"})
  end
  def moviepage

    render({ :template => "misc_templates/movies"})
  end
end
