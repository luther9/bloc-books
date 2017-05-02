require('./config/application')
app = BlocBooks::Application.new

use(Rack::ContentType)

app.route {
  map('', 'books#welcome')
  map(':controller/:id/:action')
  map(':controller/:id', default: {'action' => 'show'})
  map(':controller', default: {'action' => 'index'})
}

run(app)
