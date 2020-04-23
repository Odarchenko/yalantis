require 'test_helper'

class TicketCellTest < Cell::TestCase
  test "show" do
    html = cell("ticket").(:show)
    assert html.match /<p>/
  end

  test "index" do
    html = cell("ticket").(:index)
    assert html.match /<p>/
  end


end
