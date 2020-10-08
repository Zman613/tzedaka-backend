class CharitiesController < ApplicationController
  before_action :find_charity, only: [:show, :edit, :update]

  def index
    charities = Charity.all.sort { |a, b| a.name.downcase <=> b.name.downcase}
    render json: charities
  end

  def show
  end

  def new
    @charity = Charity.new
  end

  def create
    charity = Charity.create(charity_params)
    if charity.valid?
      redirect_to charity_path(charity)
    else
      flash[:messages] = charity.errors.full_messages
      redirect_to new_charity_path
    end
  end

  def edit
  end

  def update
    if @charity.update(charity_params)
      redirect_to charity_path(@charity)
    else
      flash[:messages] = @charity.errors.full_messages
      redirect_to edit_charity_path(@charity)
    end
  end

  private

  def charity_params
    params.require(:charity).permit(:name, :mod)
  end

  def find_charity
    @charity = Charity.find(params[:id])
  end
end
