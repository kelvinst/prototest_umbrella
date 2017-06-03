defmodule Prototest.Web.PageController do
  use Prototest.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
