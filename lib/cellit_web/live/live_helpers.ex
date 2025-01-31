defmodule CellitWeb.LiveHelpers do
  import Phoenix.LiveView
  import Phoenix.LiveView.Helpers
  import Phoenix.Component

  alias Phoenix.LiveView.JS

  @doc """
  Renders a live component inside a modal.

  The rendered modal receives a `:return_to` option to properly update
  the URL when the modal is closed.

  ## Examples

      <.modal return_to={Routes.item_index_path(@socket, :index)}>
        <.live_component
          module={CellitWeb.ItemLive.FormComponent}
          id={@item.id || :new}
          title={@page_title}
          action={@live_action}
          return_to={Routes.item_index_path(@socket, :index)}
          item: @item
        />
      </.modal>
  """
  def modal(assigns) do
    assigns = assign_new(assigns, :return_to, fn -> nil end)

    ~H"""
    <div id="modal" class="phx-modal fade-in" phx-click-away="close_modal" phx-key="escape">
      <div
        id="modal-content"
        class="phx-modal-content fade-in-scale"
        phx-click-away={JS.dispatch("click", to: "#close")}
        phx-window-keydown={JS.dispatch("click", to: "#close")}
        phx-key="escape"
      >
        <%= if @return_to do %>
          <%= live_patch("✖",
            to: @return_to,
            id: "close",
            class: "phx-modal-close",
            phx_click: "close_modal"
          ) %>
        <% else %>
          <a id="close" href="#" class="phx-modal-close" phx-click="close_modal">✖</a>
        <% end %>

        <%= render_block(@inner_block) %>
      </div>
    </div>
    """
  end
end
