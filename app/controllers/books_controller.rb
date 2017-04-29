class BooksController < BlocWorks::Controller
  def welcome
    render(:welcome, book: "Eloquent Ruby")
  end

  # 3
  def index
    render(:index, books: Book.all)
  end

  def show
    render(:show, book: Book.find_one(1))
  end

  def create
    'create'
  end

  def update
    'update'
  end

  def delete
    'delete'
  end
end
