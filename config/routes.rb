Rails.application.routes.draw do

    defaults format: 'json' do
        resources :responders, except: [:new, :edit]
    end
end
