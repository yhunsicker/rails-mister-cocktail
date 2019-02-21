class DosesController < ApplicationController

  def new

  end

  def create
  end

  def update
    id = params[:id]
    @cocktail = Cocktail.find(id)
    @cocktail.update(cocktail_params)
    redirect_to cocktails_path(@cocktail)
  end

  def destroy
    id = params[:id]
    @cocktail = Cocktail.find(id)
    @cocktail.destroy

    redirect_to cocktails_path
  end
end
