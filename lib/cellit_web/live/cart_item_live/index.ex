defmodule CellitWeb.CartItemLive.Index do
  use CellitWeb, :live_view

  alias Cellit.Carts
  alias Cellit.Carts.CartItem

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, :cart_items, list_cart_items())}
  end

  @impl true
  def handle_params(params, _url, socket) do
    {:noreply, apply_action(socket, socket.assigns.live_action, params)}
  end

  defp apply_action(socket, :edit, %{"id" => id}) do
    socket
    |> assign(:page_title, "Edit Cart item")
    |> assign(:cart_item, Carts.get_cart_item!(id))
  end

  defp apply_action(socket, :new, _params) do
    socket
    |> assign(:page_title, "New Cart item")
    |> assign(:cart_item, %CartItem{})
  end

  defp apply_action(socket, :index, _params) do
    socket
    |> assign(:page_title, "Listing Cart items")
    |> assign(:cart_item, nil)
  end

  @impl true
  def handle_event("delete", %{"id" => id}, socket) do
    cart_item = Carts.get_cart_item!(id)
    {:ok, _} = Carts.delete_cart_item(cart_item)

    {:noreply, assign(socket, :cart_items, list_cart_items())}
  end

  defp list_cart_items do
    Carts.list_cart_items()
  end
end
