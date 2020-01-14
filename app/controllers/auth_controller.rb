class AuthController < ApplicationController
    
    def login
        user = User.find_by(username: user_params['username'])
        if user && user.authenticate(user_params['password'])
            render json: {user: user, token: encode_token(user)}
        else
            render json: {errors: user.errors.full_messages}
        end
    end

    def persist
        if token
            render json: logged_in_user
        end
    end

    private

    def user_params
        params.permit(:username, :password)
    end

end