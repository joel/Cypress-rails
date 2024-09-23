require "rails_helper"

RSpec.describe "tracks/show" do
  before do
    assign(:track, Track.create!(
                     name: "Name"
                   ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
