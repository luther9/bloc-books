class BooksController < BlocWorks::Controller
  def welcome
    render(:welcome, book: "Eloquent Ruby")
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
