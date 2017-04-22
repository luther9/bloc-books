require('rack/test')

$:.unshift('../bloc_works/lib')

# This is the only way to see a backtrace if something fails to load.
begin
  require('config/application')
rescue LoadError => e
  puts(e.class)
  puts(e)
  puts(e.backtrace)
  raise e
end

class LibrariesControllerTest < Test::Unit::TestCase
  include(Rack::Test::Methods)

  def app
    BlocBooks::Application.new
  end

  def test_call
    get('/libraries/welcome')
    assert(last_response.ok?)
  end

  def test_create
    get('/libraries/create')
    assert(last_response.ok?)
  end

  def test_update
    get('/libraries/update')
    assert(last_response.ok?)
  end

  def test_delete
    get('/libraries/delete')
    assert(last_response.ok?)
  end
end
