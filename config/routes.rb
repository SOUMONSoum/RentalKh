# == Route Map
#
#                    Prefix Verb   URI Pattern                                                                              Controller#Action
#                      root GET    /                                                                                        dashboards#index
#                     rooms GET    /rooms(.:format)                                                                         rooms#index
#                           POST   /rooms(.:format)                                                                         rooms#create
#                  new_room GET    /rooms/new(.:format)                                                                     rooms#new
#                 edit_room GET    /rooms/:id/edit(.:format)                                                                rooms#edit
#                      room GET    /rooms/:id(.:format)                                                                     rooms#show
#                           PATCH  /rooms/:id(.:format)                                                                     rooms#update
#                           PUT    /rooms/:id(.:format)                                                                     rooms#update
#                           DELETE /rooms/:id(.:format)                                                                     rooms#destroy
#        rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

Rails.application.routes.draw do
  root to: 'dashboards#index'

  devise_for :users, controllers: { sessions: 'sessions', registrations: 'registrations' }

  resources :rooms
  resources :users
end
