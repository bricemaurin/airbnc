class BookingsController < ApplicationController
  before_action :set_booking, only: [:edit, :update, :destroy]
  before_action :set_flat, only: [:new, :edit, :create, :update, :destroy]
  before_action :authenticate_user!

  def index
    @bookings = current_user.bookings
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = current_user.bookings.new(booking_params)
    @booking.flat = @flat
    @booking.price = params[:booking][:number_of_day].to_i * @flat.price
    @booking.status = false

    if @booking.save
      redirect_to @flat, notice: 'Booking complete, the owner will soon contact you !'
    else
      render :new, notice: 'An error occurred, please try again.'
    end
  end

  def edit
  end

  def update
    if @booking.update(booking_params)
      @booking.price = params[:booking][:number_of_day].to_i * @flat.price
      @booking.save
      redirect_to @flat, notice: 'Booking was successfully updated.'
    else
      render :edit, notice: 'An error occurred, please try again.'
    end
  end

  def destroy
    @booking.destroy
    redirect_to flats_path, notice: 'Booking was successfully deleted.'
  end

private
  def booking_params
    params.require(:booking).permit(:number_of_day)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_flat
    @flat = Flat.find(params[:flat_id])
  end

end