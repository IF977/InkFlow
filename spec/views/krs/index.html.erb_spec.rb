require 'rails_helper'

RSpec.describe "krs/index", type: :view do
  before(:each) do
    assign(:krs, [
      Kr.create!(
        :title => "Title",
        :howtoscore => "MyText",
        :okr => nil
      ),
      Kr.create!(
        :title => "Title",
        :howtoscore => "MyText",
        :okr => nil
      )
    ])
  end

  it "renders a list of krs" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
