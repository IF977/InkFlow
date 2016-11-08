require 'rails_helper'

RSpec.describe "krs/show", type: :view do
  before(:each) do
    @kr = assign(:kr, Kr.create!(
      :title => "Title",
      :howtoscore => "MyText",
      :okr => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
