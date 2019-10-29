defmodule ExtropyWeb.PageController do
  use ExtropyWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
