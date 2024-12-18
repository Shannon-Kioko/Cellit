defmodule Cellit.Carts.CartItem do
  use Ecto.Schema
  import Ecto.Changeset

  schema "cart_items" do
    field :quantity, :integer

    belongs_to :user, Cellit.Accounts.User
    belongs_to :cart, Cellit.Carts.Cart
    belongs_to :item, Cellit.Products.Item

    timestamps()
  end

  @doc false
  def changeset(cart_item, attrs) do
    cart_item
    |> cast(attrs, [:quantity, :cart_id, :item_id])
    |> validate_required([:quantity, :cart_id, :item_id])
    |> validate_number(:quantity, greater_than: 0)
  end
end
