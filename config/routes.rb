Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  root 'home#index'
  resources :workshop
  resources :reviews
  resources :course_enquiries 
  resources :courses

  get '/course/full-stack-web-development-in-ruby-on-rails' => "courses#rails_course"
  get '/course/full-stack-web-development-with-python-django' => "courses#python_course"
  get '/course/complete-foundation-from-start-to-end-mysql' => "courses#mysql_course"
  get '/course/complete-front-end-development-using-angular-five' => "courses#angular_course"
  get '/course/web-development-in-php' => "courses#php_course"
  get '/about_us' =>"home#about_us"
  get '/recent_workshop' =>"workshops#recent_workshop"
  get '/register' =>"workshop_registrations#register"
  get '/feedback' =>"workshop_registrations#feedback"
  post'/create_register' =>"workshop_registrations#create_register"
  get '/upcoming_workshop' =>"workshops#upcoming_workshop"
  post'/create_contact' =>"home#create_contact"
  post'/subscribe' =>"home#subscribe"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
