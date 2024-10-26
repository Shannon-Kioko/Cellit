defmodule Cellit.Repo do
  use Ecto.Repo,
    otp_app: :cellit,
    adapter: Ecto.Adapters.MyXQL
end
