require "rails_helper"

RSpec.describe "items/show" do
  before do
    assign(:item, create(:item,
                         name: "Name",
                         status: 2))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
  end
end
