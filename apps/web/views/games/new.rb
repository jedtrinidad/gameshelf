module Web::Views::Games
  class New
    include Web::View

    def page_title
      'New Game'
    end

    def new_game_form
      form_for :new_game, routes.games_path do
        div class: 'field' do
          text_field :title, class: 'input', placeholder: 'Title'
        end
        div class: 'field' do
          text_field :developer, class: 'input', placeholder: 'Developer'
        end
        div class: 'field' do
          text_field :platform, class: 'input', placeholder: 'Platform'
        end
        div class: 'field' do
          date_field :released_at, class: 'input', value: date_now
        end
        div class: 'field' do
          submit 'Add', class: 'button is-rounded is-outlined is-success'
        end
      end
    end

  end
end
