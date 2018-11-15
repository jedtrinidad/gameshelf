module Web::Controllers::Home
  class Index
    include Web::Action
    include Hanami::Pagination::Action
    expose :games

    def call(params)
      repo = GameRepository.new
      @games = all_for_page(repo.games.order(:created_at).reverse)
    end

    def limit
      5
    end
  end
end
