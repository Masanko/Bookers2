class BooksController < ApplicationController

 def show
      @Book = Book.new
      @book = Book.find(params[:id])
      @user = @book.user
      @books = @user.books.page(params[:page]).reverse_order
  end

 def index
      @booksss = Book.all
      @user = current_user
      @books = @user.books.page(params[:page]).reverse_order
      @book = Book.new

end

 def create
   @book = Book.new(book_params)
   @book.user_id = current_user.id
   @user = current_user


    if @book.save
      flash[:notice] = "You have created book successfully"
      redirect_to book_path(@book.id)

   else
    @booksss = Book.all
    render action: :index

    end
end

  def edit
     @book = Book.find(params[:id])


  end

  def update
    @book = Book.find(params[:id])


   if  @book.update(book_params)
    flash[:notice] = "You have created book successfully"
    redirect_to book_path(@book.id)

  else
    render action: :edit

  end
end

  def destroy
    @book = Book.find(params[:id])
    p @book
    @book.destroy
    
    redirect_to books_path
  end

  private

  def book_params
   params.require(:book).permit(:title, :body)
  end

end