class BooksController < BlocWorks::Controller
  def welcome
    render(:welcome, book: "Eloquent Ruby")
  end

  # 3
  def index
    render(:index, books: Book.all)
  end

  def show
    book = Book.find(params['id'])
    render(:show, book: book)
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
