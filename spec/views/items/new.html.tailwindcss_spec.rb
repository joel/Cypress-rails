require "rails_helper"

RSpec.describe "items/new" do
  before do
    assign(:item, Item.new(
                    name: "MyString",
                    status: 1
                  ))
  end

  it "renders new item form" do
    render

    assert_select "form[action=?][method=?]", items_path, "post" do
      assert_select "input[name=?]", "item[name]"

      assert_select "select[name=?]", "item[track_id]"

      assert_select "select[name=?]", "item[status]"
    end
  end
end
