Rails.application.routes.draw do
  devise_for :employers, path: 'employers', controllers: {sessions: 'employers/sessions'}
  # eg. http://localhost:3000/employers/sign_in
  devise_for :employees, path: 'employees', controllers: {sessions: 'employees/sessions'}
  # eg. http://localhost:3000/employees/sign_in
  # For details on the DSL available within this file, see https://guides.rubyonrails.or/routing.html
  resources :job_postings do
    resources :feedbacks
  end

  root 'job_postings#index'

end
