defmodule Cellit.CartsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Cellit.Carts` context.
  """

  @doc """
  Generate a cart.
  """
  def cart_fixture(attrs \\ %{}) do
    {:ok, cart} =
      attrs
      |> Enum.into(%{
        total: 42,
        user_id: 42
      })
      |> Cellit.Carts.create_cart()

    cart
  end

  @doc """
  Generate a cart_item.
  """
  def cart_item_fixture(attrs \\ %{}) do
    {:ok, cart_item} =
      attrs
      |> Enum.into(%{
        quantity: 42
      })
      |> Cellit.Carts.create_cart_item()

    cart_item
  end
end
