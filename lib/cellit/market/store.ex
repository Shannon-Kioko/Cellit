defmodule Cellit.Market.Store do
  use Ecto.Schema
  import Ecto.Changeset

  schema "stores" do
    field :name, :string

    has_many :users, Cellit.Accounts.User
    has_many :items, Cellit.Products.Item

    many_to_many :categories, Cellit.Categorical.Category, join_through: "store_categories"
    timestamps()
  end

  @doc false
  def changeset(store, attrs) do
    store
    |> cast(attrs, [:name])
    |> validate_required([:name])
    |> validate_length(:name, min: 3, max: 100)
  end
end
