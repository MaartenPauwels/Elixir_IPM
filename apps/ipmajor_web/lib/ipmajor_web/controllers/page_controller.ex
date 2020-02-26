defmodule IpmajorWeb.PageController do
  use IpmajorWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
