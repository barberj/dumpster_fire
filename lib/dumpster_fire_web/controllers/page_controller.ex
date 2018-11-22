defmodule DumpsterFireWeb.PageController do
  use DumpsterFireWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
