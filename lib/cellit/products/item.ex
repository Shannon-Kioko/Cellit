defmodule Cellit.Products.Item do
  use Ecto.Schema
  import Ecto.Changeset

  schema "items" do
    field :available, :integer
    field :brand, :string
    field :description, :string
    field :min_order, :integer
    field :name, :string
    field :price, :float

    belongs_to :category, Cellit.Categorical.Category
    belongs_to :store, Cellit.Market.Store

    timestamps()
  end

  @doc false
  def changeset(item, attrs) do
    item
    |> cast(attrs, [:name, :category_id, :price, :description, :available, :min_order, :brand])
    |> validate_required([
      :name,
      :category_id,
      :price,
      :description,
      :available,
      :min_order,
      :brand
    ])
    |> validate_number(:price, greater_than: 0)
    |> validate_number(:available, greater_than: 0)
    |> validate_number(:min_order, greater_than: 0)
  end
end
