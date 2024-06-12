class MiscController < ApplicationController
  def homepage
    render({ :template => "misc_templates/home"})
  end
  def directorpage
    render({ :template => "misc_templates/directors"})
  end
  def directorinfo
    director_id = params.fetch("director_id")
    @director = Director.where({ :id => director_id }).at(0)
    @director_movies = Movie.where({:director_id => director_id})
    render({ :template => "misc_templates/directorInfo"})
  end
  def moviepage
    render({ :template => "misc_templates/movies"})
  end
  def movieinfo
    movie_id = params.fetch("movie_id")
    @movie = Movie.where({:id => movie_id}).at(0)
    @movie_director =  Director.where({ :id => @movie.director_id }).at(0)

    render({ :template => "misc_templates/movieInfo"})
  end
  def youngestpage
    @youngest_director = Director.where.not({ :dob => nil }).order({ :dob => :desc }).at(0)
    render({ :template => "misc_templates/youngest"})
  end
  def eldestpage
    @eldest_director = Director.where.not({ :dob => nil }).order({ :dob => :asc }).at(0)
    render({ :template => "misc_templates/eldest"})
  end
  def actorpage
    render({ :template => "misc_templates/actor"})
  end
  def actorinfo
    actor_id = params.fetch("actor_id")
    @actor = Actor.where({:id => actor_id}).at(0)
    render({ :template => "misc_templates/actorInfo"})
  end
end
