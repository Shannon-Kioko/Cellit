defmodule Cellit.ProductsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Cellit.Products` context.
  """

  @doc """
  Generate a item.
  """
  def item_fixture(attrs \\ %{}) do
    {:ok, item} =
      attrs
      |> Enum.into(%{
        available: 42,
        brand: "some brand",
        category_id: 42,
        description: "some description",
        min_order: 42,
        name: "some name",
        price: 120.5
      })
      |> Cellit.Products.create_item()

    item
  end
end
