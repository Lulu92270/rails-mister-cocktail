class CocktailsController < ApplicationController
   def index
     @cocktails = Cocktail.all.order(name: :asc)
   end

   def show
    @cocktail = Cocktail.find(params[:id])
   end
end
