defmodule Cellit.CategoricalFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Cellit.Categorical` context.
  """

  @doc """
  Generate a category.
  """
  def category_fixture(attrs \\ %{}) do
    {:ok, category} =
      attrs
      |> Enum.into(%{
        name: "some name"
      })
      |> Cellit.Categorical.create_category()

    category
  end
end
