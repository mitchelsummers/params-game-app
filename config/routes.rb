Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/name_enter" => "params#name_enter"
  get "name_letter_first" => "params#name_letter_first"
end