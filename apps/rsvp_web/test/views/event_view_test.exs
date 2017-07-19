defmodule RsvpWeb.EventViewTest do
    use RsvpWeb.ConnCase, async: true

    @tag current: true
    test "Should convert date to m/d/y format" do
        date = Ecto.DateTime.from_erl({{2017, 06, 23}, {00, 00, 00}})
        formatted = RsvpWeb.EventView.format_date(date)
        assert formatted == "6/23/2017"
    end
end