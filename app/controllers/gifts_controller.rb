# frozen_string_literal: true

class GiftsController < ProtectedController
  before_action :set_gift, only: %i[show update destroy]
  # GET /gifts
  def index
    # binding.pry
    @gifts = current_user.gifts.all

    render json: @gifts
  end

  # GET /gifts/1
  def show
    render json: @gift
  end

  # POST /gifts
  def create
    # binding.pry

    @gift = current_user.gifts.build(gift_params)

    if @gift.save
      render json: @gift, status: :created, location: @gift
    else
      render json: @gift.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /gifts/1
  def update
    if @gift.update(gift_params)
      render json: @gift
    else
      render json: @gift.errors, status: :unprocessable_entity
    end
  end

  # DELETE /gifts/1
  def destroy
    @gift.destroy

    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_gift
    @gift = current_user.gifts.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def gift_params
    params.require(:gift).permit(:gift_idea, :friend_id)
  end
end
