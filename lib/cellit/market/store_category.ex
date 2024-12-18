defmodule Cellit.Market.StoreCategory do
  use Ecto.Schema
  import Ecto.Changeset

  schema "store_categories" do
    belongs_to :store, Cellit.Market.Store
    belongs_to :category, Cellit.Categorical.Category

    timestamps()
  end

  @doc false
  def changeset(store_category, attrs) do
    store_category
    |> cast(attrs, [:store_id, :category_id])
    |> validate_required([:store_id, :category_id])
    |> unique_constraint(:store_category)
  end
end
