defmodule BrokenWeb.PageLive do
  use Phoenix.LiveView

  def render(assigns) do
    BrokenWeb.PageView.render("index.html", assigns)
  end

  def mount(_session, socket) do
    socket =
      socket
      |> assign(texts: ["foo", "bar"])

    {:ok, socket}
  end

  def handle_event("update", %{"id" => id, "text" => new_text}, socket) do
    id = String.to_integer(id)

    texts =
      socket.assigns.texts
      |> Enum.with_index()
      |> Enum.map(fn {text, index} ->
        case index do
          ^id -> new_text
          _ -> text
        end
      end)
      |> IO.inspect()

    socket =
      socket
      |> assign(texts: texts)

    {:noreply, socket}
  end
end
