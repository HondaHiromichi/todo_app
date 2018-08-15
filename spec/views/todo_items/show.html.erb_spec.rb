require 'rails_helper'

RSpec.describe "todo_items/show", type: :view do
  before(:each) do
    @todo_item = assign(:todo_item, TodoItem.create!(
      :title => "Title",
      :contents => "Contents"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Contents/)
  end
end
