defmodule Cellit.Repo.Migrations.CreateStores do
  use Ecto.Migration

  def change do
    create table(:stores) do
      add :name, :text, null: false
      add :location, :string, null: false

      timestamps()
    end
  end
end
