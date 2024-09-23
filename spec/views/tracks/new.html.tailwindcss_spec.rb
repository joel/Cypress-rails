require "rails_helper"

RSpec.describe "tracks/new" do
  before do
    assign(:track, Track.new(
                     name: "MyString"
                   ))
  end

  it "renders new track form" do
    render

    assert_select "form[action=?][method=?]", tracks_path, "post" do
      assert_select "input[name=?]", "track[name]"
    end
  end
end
