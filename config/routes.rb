Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
  get("/directors", { :controller => "misc", :action => "directorpage" })
  get("/directors/youngest", { :controller => "misc", :action => "youngestpage" })
  get("/directors/eldest", { :controller => "misc", :action => "eldestpage" })
  get("/directors/:director_id", { :controller => "misc", :action => "directorinfo" })
  get("/movies", { :controller => "misc", :action => "moviepage" })
  get("/movies/:movie_id", { :controller => "misc", :action => "movieinfo" })
  get("/actors", { :controller => "misc", :action => "actorpage" })
  get("/actors/:actor_id", { :controller => "misc", :action => "actorinfo" })

end
