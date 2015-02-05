class AddressesController < ApplicationController
  def index
    @addresses = Address.all
  end
  def new
    @address = Address.new
  end
  def create
    @address = Address.new(address_params)
    if @address.save
      redirect_to addresses_path
    else

      render :new
    end
  end
  def edit
    @address = Address.find(params[:id])

  end

  def show
    @address = Address.find(params[:id])
  end

  def update
    @address = Address.new(address_params)
    if @address.update(address_params)
      redirect_to addresses_path
    else
      render :edit
    end
  end

  def destroy
    address = Address.find(params[:id])
    address.destroy
    redirect_to addresses_path

  end




  private

  def address_params
    params.require(:address).permit(:name, :address_line_one, :address_line_two, :city, :state, :zipcode, :phone_number)
  end

end
