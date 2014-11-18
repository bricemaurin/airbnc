class FlatsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_flat, only: [:show, :edit, :update, :destroy]

  def index
    @flats = Flat.all
  end

  def show
  end

  def new
    @flat = Flat.new
    2.times { @flat.flat_pictures.build }
    # @flat_picture = FlatPicture.new
  end

  def create
    @flat = current_user.flats.new(flat_params)

    if @flat.save
      redirect_to @flat, notice: 'Flat was successfully created.'
    else
      render :new, notice: 'An error occurred, please try again.'
    end
  end

  def edit
  end

  def update
    if @flat.update(flat_params)
      redirect_to @flat, notice: 'Flat was successfully updated.'
    else
      render :edit, notice: 'An error occurred, please try again.'
    end
  end

  def destroy
    @flat.destroy
    redirect_to flats_path, notice: 'Flat was successfully deleted.'
  end

private
  def flat_params
    params.require(:flat).permit(:title, :description, :address, :zipcode, :city, :price, :room_number, :bed_number, :guest_number, flat_pictures_attributes: [:photo])
  end

  def set_flat
    @flat = Flat.find(params[:id])
  end
end