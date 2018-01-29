class FriendsController < ProtectedController
  before_action :set_friend, only: %i[show update destroy]

  # GET /friends
  def index
    # check here, if things aren't working!
    @friends = current_user.friends.all

    render json: @friends
  end

  # GET /friends/1
  def show
    render json: @friend
  end

  # POST /friends
  def create
    @friend = current_user.friends.build(friend_params)

    if @friend.save
      render json: @friend, status: :created, location: @friend
    else
      render json: @friend.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /friends/1
  def update
    if @friend.update(friend_params)
      render json: @friend
    else
      render json: @friend.errors, status: :unprocessable_entity
    end
  end

  # DELETE /friends/1
  def destroy
    @friend.destroy

    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_friend
    @friend = current_user.friends.find(params[:id])
  end

    # Only allow a trusted parameter "white list" through.
    def friend_params
      params.require(:friend).permit(:nickname, :dob)
    end
end
