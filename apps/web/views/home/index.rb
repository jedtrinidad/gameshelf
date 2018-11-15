module Web::Views::Home
  class Index
    include Web::View
    include Hanami::Pagination::View
    def page_title
      'Home'
    end
  end
end
