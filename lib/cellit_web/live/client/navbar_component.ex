defmodule CellitWeb.NavBarComponent do
  # use Phoenix.LiveComponent
  use CellitWeb, :live_component

  def render(assigns) do
    ~H"""
    <%!-- <header>
      <section class="w-full px-6 pr-11 bg-primary"> --%>
    <nav class="flex justify-between items-center py-4 sticky top-0 px-6 pr-11 bg-primary z-50">
      <a href={Routes.home_index_path(@socket, :index)} class="text-2xl text-white font-bold">
        GadgIT<sup class="s">s</sup>
      </a>

      <div class="flex justify-between"></div>
      <div class="flex justify-between space-x-5">
        <img src={Routes.static_path(CellitWeb.Endpoint, "/images/search.png")} class="size-5" />
        <%= live_redirect to: Routes.cart_index_path(@socket, :index) do %>
          <img src={Routes.static_path(CellitWeb.Endpoint, "/images/wishlist.png")} class="size-5" />
        <% end %>
        <%= live_redirect to: Routes.cart_index_path(@socket, :index) do %>
          <img src={Routes.static_path(CellitWeb.Endpoint, "/images/cart.png")} class="size-5" />
        <% end %>
      </div>
    </nav>
    <%!-- </section>
    </header> --%>
    """
  end
end
