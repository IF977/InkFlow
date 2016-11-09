require 'rails_helper'

RSpec.describe "krs/new", type: :view do
  before(:each) do
    assign(:kr, Kr.new(
      :title => "MyString",
      :howtoscore => "MyText",
      :okr => nil
    ))
  end

  it "renders new kr form" do
    render

    assert_select "form[action=?][method=?]", krs_path, "post" do

      assert_select "input#kr_title[name=?]", "kr[title]"

      assert_select "textarea#kr_howtoscore[name=?]", "kr[howtoscore]"

      assert_select "input#kr_okr_id[name=?]", "kr[okr_id]"
    end
  end
end
