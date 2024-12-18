defmodule Cellit.Carts.Cart do
  use Ecto.Schema
  import Ecto.Changeset

  schema "carts" do
    field :total, :integer

    belongs_to :user, Cellit.Accounts.User

    has_many :cart_items, Cellit.Carts.CartItem

    timestamps()
  end

  @spec changeset(
          {map(),
           %{
             optional(atom()) =>
               atom()
               | {:array | :assoc | :embed | :in | :map | :parameterized | :supertype | :try,
                  any()}
           }}
          | %{
              :__struct__ => atom() | %{:__changeset__ => map(), optional(any()) => any()},
              optional(atom()) => any()
            },
          :invalid | %{optional(:__struct__) => none(), optional(atom() | binary()) => any()}
        ) :: Ecto.Changeset.t()
  @doc false
  def changeset(cart, attrs) do
    cart
    |> cast(attrs, [:user_id, :total, :cart_items])
    |> validate_required([:user_id, :total, :cart_items])
  end
end
