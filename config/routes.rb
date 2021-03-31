Rails.application.routes.draw do
  #get 'home/homepage'
  root 'home#homepage'

  get 'home/labourData'
  get 'home/crimeData'
  get 'home/covidData'
  get 'home/otherQueries'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
