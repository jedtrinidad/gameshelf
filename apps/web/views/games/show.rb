module Web::Views::Games
  class Show
    include Web::View
    
    def page_title
      game.title
    end
  end
end
