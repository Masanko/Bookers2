class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :ensure_correct_user,only: [:update,:edit]
  
  def show
    @user = User.find(params[:id])
    @books = @user.books
    @book = Book.new

  end

  def index
      @users = User.all
      @user = current_user
      @books = @user.books.page(params[:page]).reverse_order
      @book = Book.new
  end

  def edit
    @user = User.find(params[:id])

  end

  def update
   @user =User.find(params[:id])

 if
   @user.update(user_params)
   flash[:notice] = "You have update user successfully"
   redirect_to user_path(@user.id)

 else
    render action: :edit

  end

end

  def user_params
   params.require(:user).permit(:name, :profile_image, :introduction)
  end

def ensure_correct_user
    @user = User.find(params[:id])
    if @user.id != current_user.id
      redirect_to user_path(current_user)
 end
end

 end