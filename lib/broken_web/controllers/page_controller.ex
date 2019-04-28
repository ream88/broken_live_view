defmodule BrokenWeb.PageController do
  use BrokenWeb, :controller

  def index(conn, _params) do
    Phoenix.LiveView.Controller.live_render(conn, BrokenWeb.PageLive, session: nil)
  end
end
