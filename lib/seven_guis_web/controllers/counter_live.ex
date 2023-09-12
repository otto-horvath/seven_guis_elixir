defmodule SevenGuisWeb.CounterLive do
  use SevenGuisWeb, :live_view

  def mount(_params, _assigns, socket) do
    {:ok, assign(socket, :count, 0)}
  end


  def handle_event("increment", _params, socket) do
    {:noreply, update(socket, :count, &(&1 + 1))}
  end
end
