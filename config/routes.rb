Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
  get("/directors", { :controller => "misc", :action => "directorpage" })
  get("/directors/:director_id", { :controller => "misc", :action => "directorinfo" })
  get("/movies", { :controller => "misc", :action => "moviepage" })
  get("/movies/:movie_id", { :controller => "misc", :action => "movieinfo" })
end
