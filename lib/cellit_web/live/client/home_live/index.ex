defmodule CellitWeb.HomeLive.Index do
  use CellitWeb, :live_view
  alias Cellit.Accounts

  def mount(_params, session, socket) do
    current_user =
      if session["user_token"] == nil do
        nil
      else
        Accounts.get_user_by_session_token(session["user_token"])
      end

    IO.inspect(current_user, label: "current_user")
    IO.inspect(session["user_token"], label: "Session token")

    {:ok,
     socket
     |> assign(:current_user, current_user)}
  end
end
