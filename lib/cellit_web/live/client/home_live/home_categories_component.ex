defmodule CellitWeb.HomeCategoriesComponent do
  use CellitWeb, :live_component
  # use Phoenix.LiveComponent

  def render(assigns) do
    ~H"""
    <div class="bg-background w-[100%] h-[80%]">
      Browse Categories
      <div class="text-lg">
        <%= if @current_user == nil do %>
          No User yet
        <% else %>
          <%= @current_user.first_name %>
        <% end %>
      </div>
    </div>
    """
  end
end
