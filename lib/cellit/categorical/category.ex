defmodule Cellit.Categorical.Category do
  use Ecto.Schema
  import Ecto.Changeset

  schema "categories" do
    field :name, :string
    field :description, :string

    has_many :items, Cellit.Products.Item
    # has_many :stores, through: [:store_categories, :store]

    many_to_many :stores, Cellit.Market.Store, join_through: "store_categories"

    timestamps()
  end

  @doc false
  def changeset(category, attrs) do
    category
    |> cast(attrs, [:name, :description])
    |> validate_required([:name, :description])
    |> validate_length(:description, max: 255)
  end
end
