# Configure your routes here
# See: http://hanamirb.org/guides/routing/overview/
#
# Example:
# get '/hello', to: ->(env) { [200, {}, ['Hello from Hanami!']] }
get '/', to: 'home#index', as: :home
resources :games, only: [:new, :create, :show]
get '/games/new', to: 'games#new'
post '/games', to: 'games#create'
get '/games/:id', to: 'games#show'
