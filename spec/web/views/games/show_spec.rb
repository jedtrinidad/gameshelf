require_relative '../../../spec_helper'

describe Web::Views::Games::Show do
  let(:exposures) { Hash[format: :html] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/games/show.html.erb') }
  let(:view)      { Web::Views::Games::Show.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #format' do
    view.format.must_equal exposures.fetch(:format)
  end
end
