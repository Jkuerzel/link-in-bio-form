Rails.application.routes.draw do

  get("/", { :controller => "items", :action => "index" })

  get("/backdoor", { :controller => "iteminput", :action => "formpage" })

  post("/backdoor/adddata", { :controller => "iteminput", :action => "add_data" })

end
