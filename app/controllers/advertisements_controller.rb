class AdvertisementsController < ApplicationController

  # Récupère l'ensemble des annonces, triées par dates de création décroissantes.
  # Route : GET /advertisements
  def index
    @advertisements = Advertisement.order(created_at: :desc)
  end

end
