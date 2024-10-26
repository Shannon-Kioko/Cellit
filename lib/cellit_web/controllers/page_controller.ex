defmodule CellitWeb.PageController do
  use CellitWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
