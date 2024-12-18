defmodule Cellit.Repo.Migrations.CreateItems do
  use Ecto.Migration

  def change do
    create table(:items) do
      add :name, :text
      add :price, :float
      add :description, :text
      add :available, :integer, null: true
      add :min_order, :integer
      add :brand, :string

      add :category_id, references(:categories, on_delete: :delete_all)
      add :store_id, references(:stores, on_delete: :delete_all)

      timestamps()
    end

    create index(:items, [:store_id])
  end
end
