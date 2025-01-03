defmodule Cellit.Repo.Migrations.AddLocation do
  use Ecto.Migration

  def change do
    alter table(:users) do
      add :location, :string
    end
  end
end
