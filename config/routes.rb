Rails.application.routes.draw do
  get 'ststic_pages/home'

  get 'ststic_pages/help'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root "application#hello"

end
