class BooksController < BlocWorks::Controller
  def welcome
    render(:welcome, book: "Eloquent Ruby")
  end

  # 3
  def index
    render(:index, books: Book.all)
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
