CommunityBoard::Application.routes.draw do
  devise_for :users
  resources :communities, except: :index do
    resources :posts
  end

  namespace "api" do
    namespace "v1" do
      resources :communities
    end
  end

  namespace "api" do
    namespace "v1" do
      resources :community do
        resources :posts
      end
    end
  end

  scope '/favourite' do
    resources :posts
  end

  scope '/subscribe' do
    resources :communities
  end

  root to: 'communities#index'
end
