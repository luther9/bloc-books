class LibrariesController < BlocWorks::Controller
  def welcome
    render(:welcome, library: "Atlanta Public Library")
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
