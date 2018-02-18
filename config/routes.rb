Rails.application.routes.draw do
  root :to => 'twitter#search'

  get '/twitter_search', to: 'twitter#search'
end
