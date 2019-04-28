defmodule BrokenWeb.PageLive do
  use Phoenix.LiveView

  def render(assigns) do
    BrokenWeb.PageView.render("index.html", assigns)
  end

  def mount(_session, socket) do
    {:ok, socket}
  end
end
