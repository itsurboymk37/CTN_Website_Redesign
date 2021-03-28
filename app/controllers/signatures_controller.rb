class SignaturesController < ApplicationController
  http_basic_authenticate_with name: "password", password: "username", except: [:index, :new, :create]
  
  def index
    @signatures = Signature.all
  end

  def show
    @signature = Signature.find(params[:id])
  end

  def new
    @signature = Signature.new
  end

  def create
    @signature = Signature.new(signature_params)

    if @signature.save
      redirect_to @signature
    else
      render :new
    end
  end

  def edit
    @signature = Signature.find(params[:id])
  end

  def update
    @signature = Signature.find(params[:id])

    if @signature.update(signature_params)
      redirect_to @signature
    else
      render :edit
    end
  end

  def destroy
    @signature = Signature.find(params[:id])
    @signature.destroy

    redirect_to root_path
  end

  private
    def signature_params
      params.require(:signature).permit(:name, :city_state, :country)
    end
end
