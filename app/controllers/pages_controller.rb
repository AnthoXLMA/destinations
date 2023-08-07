class PagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
    @members = ["thanh", "dimitri", "germain", "damien", "julien"]
  end

  def destinations
    @trips = ["Saint-Tropez", "Courchevel", "Saint-barthélémy", "Miami", "Saint-Martin"]
    @destinations = Destination.all
    @themes = Theme.all
    @rubriques = Rubrique.all
    @display = @rubriques.each do |display|
      display.chapter
    end
  end

  def themes
    @themes = Theme.all
    @rubriques = Rubrique.all
  end

  def rubriques
    @rubriques = Rubrique.all
  end

  private

  def set_rubrique
    @rubrique = Rubrique.find(params[:theme_id])
  end

  def rubrique_params
    params.require(:rubrique).permit(:theme_id, :chapter)
  end
end
