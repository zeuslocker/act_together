defmodule ActTogetherWeb.PageController do
  use ActTogetherWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
