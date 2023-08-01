class PagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
    @members = ["thanh", "dimitri", "germain", "damien", "julien"]
  end

  def destinations
    @destinations = ["Saint-Tropez", "Courchevel", "Saint-barthélémy", "Miami", "Saint-Martin"]
  end
end
