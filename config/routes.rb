Rails.application.routes.draw do
  namespace :home do
    get 'other_data/crime_labour'
    get 'other_data/crime_covid'
  end
  namespace :home do
    get 'covid_data/cases'
    get 'covid_data/deaths'
    get 'covid_data/hospitalizations'
  end
  namespace :home do
    get 'labour_data/unemployment'
    get 'labour_data/labourForce'
    get 'labour_data/employment'
  end
  #get 'home/homepage'
  root 'home#homepage'

  get 'home/labour_data'

  get 'home/crime_data'
  
  get 'home/covid_data'
  
  get 'home/other_data'
  #get 'home/otherData/crimeLabour'
  #get 'home/otherData/crimeCovid'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
