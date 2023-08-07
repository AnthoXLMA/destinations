class RubriquesController < ApplicationController

  def index
    @rubriques = Rubrique.all
  end

  def show
    @rubrique = Rubrique.find(params[:id])
  end

  private
   def set_rubrique
    @plant = Plant.find(params[:id])
  end

  def rubrique_params
    params.require(:rubrique).permit(:chapter, :theme_id)
  end
end
