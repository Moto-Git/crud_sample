Rails.application.routes.draw do
  # 一覧画面へのルーティング
  get "/users", to: "users#index"

  # 新規投稿画面へのルーティング
  get "/users/new", to: "users#new"

  # 新規登録を行うためのルーティング
  post "/users", to: "users#create"
end
