Rails.application.routes.draw do
  namespace :api do
    get '/first_contact_url' => 'contacts#first_contact_action'
    get '/second_contact_url' => 'contacts#second_contact_action'
    get '/third_contact_url' => 'contacts#third_contact_action'
    get '/all_contacts_url' => 'contacts#all_contacts_action'
  end
end
