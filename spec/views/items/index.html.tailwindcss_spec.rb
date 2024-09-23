require "rails_helper"

RSpec.describe "items/index" do
  before do
    assign(:items, create_list(:item, 2, name: "Name",
                                         status: 2))
  end

  it "renders a list of items" do
    render
    cell_selector = "div>p"
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    # assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
  end
end
