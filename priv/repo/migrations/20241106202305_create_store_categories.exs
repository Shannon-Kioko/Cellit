defmodule Cellit.Repo.Migrations.CreateStoreCategories do
  use Ecto.Migration

  def change do
    create table(:store_categories) do
      add :store_id, references(:stores, on_delete: :nothing)
      add :category_id, references(:categories, on_delete: :nothing)

      timestamps()
    end

    create index(:store_categories, [:store_id])
    create index(:store_categories, [:category_id])
    create unique_index(:store_categories, [:store_id, :category_id], name: :store_category_index)
  end
end
