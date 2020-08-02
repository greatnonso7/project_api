defmodule ProjectApiWeb.PageController do
  use ProjectApiWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
