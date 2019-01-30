Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}

  devise_scope :user do
    get 'masuk_ke_website_bimas_katolik_sumba_tengah', to: 'devise/sessions#new'
    get 'mendaftar_ke_website_bimas_katolik_sumba_tengah', to: 'devise/registrations#new'
  end

  resources :arsip

  root to: 'web#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
