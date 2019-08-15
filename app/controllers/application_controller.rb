class ApplicationController < ActionController::API
    helpers do
        def current_user
            User.first #Mock log in
        end

        def logged_in?
            !!current_user
        end
    end
end
