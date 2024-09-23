require "rails_helper"

RSpec.describe "tracks/edit" do
  let(:track) do
    Track.create!(
      name: "MyString"
    )
  end

  before do
    assign(:track, track)
  end

  it "renders the edit track form" do
    render

    assert_select "form[action=?][method=?]", track_path(track), "post" do
      assert_select "input[name=?]", "track[name]"
    end
  end
end
