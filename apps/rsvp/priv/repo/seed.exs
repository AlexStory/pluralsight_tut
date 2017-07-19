unless(Rsvp.EventQueries.any()) do
    Rsvp.EventQueries.create(Rsvp.Events.changeset(%Rsvp.Events{}, %{date: "2017-10-20 00:00:00", title: "Alex's Birthday", location: "Everywhere"}))

    Rsvp.EventQueries.create(Rsvp.Events.changeset(%Rsvp.Events{}, %{date: "2017-12-25 00:00:00", title: "Christmas", location: "Everywhere"}))
end
