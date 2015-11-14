class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    include SessionsHelper

    def require_authentication
        unless logged_in?
            redirect_to root_path, alert: "Necessita estar logado!"
        end
    end

    def require_no_authentication
        if logged_in?
            redirect_to root_path, alert: "Já se encontra logado!"
        end
    end


end