Rails.application.routes.draw do
  root 'home#index'

  resources :course_enquiries 

  get '/course/full-stack-web-development-in-ruby-on-rails' => "courses#rails_course"
  get '/course/full-stack-web-development-with-python-django' => "courses#python_course"
  get '/course/complete-foundation-from-start-to-end-mysql' => "courses#mysql_course"
  get '/course/complete-front-end-development-using-angular-five' => "courses#angular_course"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
