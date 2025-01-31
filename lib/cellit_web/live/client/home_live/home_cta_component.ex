defmodule CellitWeb.HomeCtaComponent do
  use CellitWeb, :live_component
  # use Phoenix.LiveComponent

  def render(assigns) do
    ~H"""
    <div class="bg-primary w-[100%] h-[100vh]">
      Subscribe to our Newsletter
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
