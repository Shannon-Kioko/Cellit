defmodule CellitWeb.ItemLive.Index do
  use CellitWeb, :live_view

  alias Cellit.Products
  alias Cellit.Products.Item

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, :items, list_items())}
  end

  @impl true
  def handle_params(params, _url, socket) do
    {:noreply, apply_action(socket, socket.assigns.live_action, params)}
  end

  defp apply_action(socket, :edit, %{"id" => id}) do
    socket
    |> assign(:page_title, "Edit Item")
    |> assign(:item, Products.get_item!(id))
  end

  defp apply_action(socket, :new, _params) do
    socket
    |> assign(:page_title, "New Item")
    |> assign(:item, %Item{})
  end

  defp apply_action(socket, :index, _params) do
    socket
    |> assign(:page_title, "Listing Items")
    |> assign(:item, nil)
  end

  @impl true
  def handle_event("delete", %{"id" => id}, socket) do
    item = Products.get_item!(id)
    {:ok, _} = Products.delete_item(item)

    {:noreply, assign(socket, :items, list_items())}
  end

  defp list_items do
    Products.list_items()
  end
end
