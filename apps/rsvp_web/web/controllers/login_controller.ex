defmodule RsvpWeb.LoginController do
  use RsvpWeb.Web, :controller

  def login(conn, %{"login" => %{"username" => name}}) do
    expiration = 60 * 60 * 24 * 7

    conn
    |> Plug.Conn.put_resp_cookie("user_name", name, max_age: expiration)
    |> redirect(to: "/")
  end

  def index(conn, _params) do
    render conn, "login.html"
  end
end
