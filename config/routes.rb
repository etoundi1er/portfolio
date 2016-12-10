Rails.application.routes.draw do
    get 'about', to: 'welcome#about'
    get 'readbooks', to: 'welcome#readbooks'
    get 'tinymce_assets/create'
    post '/tinymce_assets' => 'tinymce_assets#create'

    resources :articles
    resources :projects
    resources :categories

    root 'welcome#index'
end
