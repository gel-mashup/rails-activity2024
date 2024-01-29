Rails.application.routes.draw do
  devise_for :users
  # /posts, /posts/:id/comments
  resources :posts do
    resources :comments # Comments.where(post_id: 1)
  end

  resources :comments

  # /users, /users/:id/comments, /users/:id/posts
  # resources :users do
  #   resources :comments # Comments.where(user_id: 1)
  #   resources :posts # Post.where(user_id: 1)
  # end

  # scope "/admin" do
  #   resources :users do
  #     resources :posts
  #     member do
  #       get "posts/:post_id/comments", to: "posts#fetch_comments"
  #     end
  #   end

  #   resources :posts # Post.all
  # end
  # get 'wat/:post_id', to: 'posts#show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "posts#index"
end
