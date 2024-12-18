defmodule Cellit.MarketFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Cellit.Market` context.
  """

  @doc """
  Generate a store.
  """
  def store_fixture(attrs \\ %{}) do
    {:ok, store} =
      attrs
      |> Enum.into(%{
        categories: [],
        name: "some name"
      })
      |> Cellit.Market.create_store()

    store
  end

  @doc """
  Generate a store_category.
  """
  def store_category_fixture(attrs \\ %{}) do
    {:ok, store_category} =
      attrs
      |> Enum.into(%{})
      |> Cellit.Market.create_store_category()

    store_category
  end

  @doc """
  Generate a store_category.
  """
  def store_category_fixture(attrs \\ %{}) do
    {:ok, store_category} =
      attrs
      |> Enum.into(%{})
      |> Cellit.Market.create_store_category()

    store_category
  end
end
