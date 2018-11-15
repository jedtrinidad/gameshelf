module Web::Controllers::Games
  class NoGameFound < StandardError
    def initialize(id)
      super "Game ID##{id} does not exist in our database."
    end
  end
  class Show
    include Web::Action
    handle_exception NoGameFound => :handle_exception
    expose :game

    def call(params)
     game = GameRepository.new.find(params[:id])

     if game.nil?
      raise NoGameFound.new(params[:id])
     else
      @game = game
     end
     
    end

    private

    def handle_exception(exception)
      status 404, exception.message
    end
  end
end
