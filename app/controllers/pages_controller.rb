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
  end

  def themes
    @themes = Theme.all
  end
end
