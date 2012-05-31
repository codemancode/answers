Answers::Application.routes.draw do
  root :to => "questions#index"

  resources :questions, :answers
end
