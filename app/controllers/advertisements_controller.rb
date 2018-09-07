class AdvertisementsController < ApplicationController

  # Récupère l'ensemble des annonces, triées par dates de création décroissantes.
  # Route : GET /advertisements
  def index
    @advertisements = Advertisement.order(created_at: :desc)
  end

  # Récupère une annonce à partir de son identifiant.
  # Route : GET /advertisements/:id
  def show
    @advertisement = Advertisement.find(params[:id])
  end

  # Prépare une nouvelle annonce vide, prête à être remplie par l'utilisateur
  # Route : GET /advertisements/new
  def new
    @advertisement = Advertisement.new
  end

  # Publie une annonce saisie par l'utilisateur
  # Route : POST /advertisements
  def create
    @advertisement = Advertisement.new(advertisement_params)
    if @advertisement.save
      redirect_to advertisements_path
    else
      render :new
    end
  end

private

  def advertisement_params
    params.require(:advertisement).permit(
      :title,
      :author,
      :email,
      :phone,
      :price,
      :content,
      :image
    )
  end

end
