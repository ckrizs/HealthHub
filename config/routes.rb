Rails.application.routes.draw do
  devise_for :doctors, controllers: { registrations: 'doctors/registrations' , sessions: 'doctors/sessions' }
  devise_for :patients, controllers: { registrations: 'patients/registrations' , sessions: 'patients/sessions' }
  # Визначення маршруту для головної сторінки
  root "home#index"  # Цей рядок визначає, що головна сторінка буде рендеритися за допомогою методу index контролера home

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
end
