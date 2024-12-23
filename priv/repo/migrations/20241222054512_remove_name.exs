defmodule Cellit.Repo.Migrations.RemoveName do
  use Ecto.Migration

  def change do
    alter table(:users) do
      remove :name
    end
  end
end
