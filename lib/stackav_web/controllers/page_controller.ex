defmodule StackavWeb.PageController do
  use StackavWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
