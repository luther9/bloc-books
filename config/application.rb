require('bloc_works')

$LOAD_PATH << File.join(File.dirname(__FILE__), "..", "app", "controllers")

module BlocBooks
  class Application < BlocWorks::Application
    def call env
      response = super(env)
      response[2][0] = "This is BlocBooks!<br>" + response[2][0]
      response
    end
  end
end
