require 'test_helper'

class TicketConceptTest < Cell::TestCase
  test "show" do
    html = concept("ticket/cell").(:show)
    assert html.match /<p>/
  end


end
