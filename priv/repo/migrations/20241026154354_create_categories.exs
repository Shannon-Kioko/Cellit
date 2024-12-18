defmodule Cellit.Repo.Migrations.CreateCategories do
  use Ecto.Migration

  def change do
    create table(:categories) do
      add :name, :string, null: false
      add :description, :string, null: false

      timestamps()
    end

    # Index on name for faster lookup by name
    create unique_index(:categories, [:name])
  end
end
