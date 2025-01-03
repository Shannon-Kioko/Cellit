defmodule CellitWeb.NavBarComponent do
  # use Phoenix.LiveComponent
  use CellitWeb, :live_component

  def render(assigns) do
    ~H"""
    <%!-- <header>
      <section class="w-full px-6 pr-11 bg-primary"> --%>
        <nav class="flex justify-between items-center py-4">
          <a href={Routes.home_index_path(@socket, :index)} class="text-2xl text-white font-medium">Cellit</a>
          
        <div class="flex justify-between">
          <%!-- <%= render "_user_menu.html", assigns %> --%>
        </div>
        <%!-- <%= if @current_user do %> --%>
        <div class="flex justify-between space-x-5">
          <%!-- <%= link to: Routes.user_settings_path(@conn, :edit) do %>
            <img src={Routes.static_path(@conn, "/images/user.png")} class="size-5" alt="User Logo"/>
          <% end %>

          <%= link to: Routes.user_session_path(@conn, :delete), method: :delete do %>
            <img src={Routes.static_path(@conn, "/images/logout.png")} class="size-5" alt="Logout Logo"/>
          <% end %> --%>

          <img src={Routes.static_path(CellitWeb.Endpoint, "/images/search.png")} class="size-5">
          <%= live_redirect to: Routes.cart_index_path(@socket, :index) do %>
          <img src={Routes.static_path(CellitWeb.Endpoint, "/images/wishlist.png")} class="size-5">
    <% end %>
          <%= live_redirect to: Routes.cart_index_path(@socket, :index) do %>
            <img src={Routes.static_path(CellitWeb.Endpoint, "/images/cart.png")} class="size-5">
          <% end %>
        </div>
        <%!-- <% end %> --%>
        </nav>
        <%!-- <a href="_user_menu.html" class="phx-logo"> --%>
        <%!-- </a> --%>
      <%!-- </section>
    </header> --%>
    """
  end
end
