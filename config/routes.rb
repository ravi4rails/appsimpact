Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  root 'home#index'

  resources :course_enquiries 

  get '/course/full-stack-web-development-in-ruby-on-rails' => "courses#rails_course"
  get '/course/full-stack-web-development-with-python-django' => "courses#python_course"
  get '/course/complete-foundation-from-start-to-end-mysql' => "courses#mysql_course"
  get '/course/complete-front-end-development-using-angular-five' => "courses#angular_course"
  get '/course/web-development-in-php' => "courses#php_course"
  post '/create_contact' =>"home#create_contact"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
