defmodule Cellit.Repo.Migrations.CreateCarts do
  use Ecto.Migration

  def change do
    create table(:carts) do
      add :total, :integer
      add :user_id, references(:users, on_delete: :delete_all), null: false

      timestamps()
    end

    # Index on user_id for faster retrieval of carts by user
    create index(:carts, [:user_id])
  end
end
