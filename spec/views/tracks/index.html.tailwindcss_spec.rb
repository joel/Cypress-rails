require "rails_helper"

RSpec.describe "tracks/index" do
  before do
    assign(:tracks, [
             Track.create!(
               name: "Name"
             ),
             Track.create!(
               name: "Name"
             )
           ])
  end

  it "renders a list of tracks" do
    render
    cell_selector = "div>p"
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
  end
end
