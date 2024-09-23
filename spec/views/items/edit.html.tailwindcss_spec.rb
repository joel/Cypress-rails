require "rails_helper"

RSpec.describe "items/edit" do
  let(:item) do
    create(:item,
           name: "MyString",
           status: 1)
  end

  before do
    assign(:item, item)
  end

  it "renders the edit item form" do
    render

    assert_select "form[action=?][method=?]", item_path(item), "post" do
      assert_select "input[name=?]", "item[name]"

      assert_select "select[name=?]", "item[track_id]"

      assert_select "select[name=?]", "item[status]"
    end
  end
end
