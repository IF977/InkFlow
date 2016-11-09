require 'rails_helper'

RSpec.describe "krs/edit", type: :view do
  before(:each) do
    @kr = assign(:kr, Kr.create!(
      :title => "MyString",
      :howtoscore => "MyText",
      :okr => nil
    ))
  end

  it "renders the edit kr form" do
    render

    assert_select "form[action=?][method=?]", kr_path(@kr), "post" do

      assert_select "input#kr_title[name=?]", "kr[title]"

      assert_select "textarea#kr_howtoscore[name=?]", "kr[howtoscore]"

      assert_select "input#kr_okr_id[name=?]", "kr[okr_id]"
    end
  end
end
