module Web::Controllers::Games
  class Create
    include Web::Action

    params do
      required(:new_game).schema do
        required(:title).filled(:str?)
        required(:developer).filled(:str?)
        required(:platform).filled(:str?)
        required(:released_at).filled(:date?)
      end
    end

    def call(params)
      if params.valid?
        title = params.get(:new_game, :title)
        developer = params.get(:new_game, :developer)
        platform = params.get(:new_game, :platform)
        released_at = params.get(:new_game, :released_at)

        save_game(title, developer, platform, released_at)
        redirect_to '/'
      else
        self.status = 422
      end
    end

    private
    def save_game(title, developer, platform, released_at)
      GameRepository.new.create(title: title, developer: developer, platform: platform, released_at: released_at)
    end

  end
end
