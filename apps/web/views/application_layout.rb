module Web
  module Views
    class ApplicationLayout
      include Web::Layout
      # To set title for page, override this method in the view
      def page_title
        ''
      end

      def format_date(date)
        date.strftime("%B %-d, %Y")
      end

      def date_now
        Time.now.strftime("%Y-%m-%d")
      end
    end
  end
end
