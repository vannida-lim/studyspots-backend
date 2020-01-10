class FavoritesController < ApplicationController
    def show
        favorites = Favorite.find_by(id: params[:id])
        render json: favorites
    end
end
