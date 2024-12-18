defmodule Cellit.Market do
  @moduledoc """
  The Market context.
  """

  import Ecto.Query, warn: false
  alias Cellit.Repo

  alias Cellit.Market.Store

  @doc """
  Returns the list of stores.

  ## Examples

      iex> list_stores()
      [%Store{}, ...]

  """
  def list_stores do
    Repo.all(Store)
  end

  @doc """
  Gets a single store.

  Raises `Ecto.NoResultsError` if the Store does not exist.

  ## Examples

      iex> get_store!(123)
      %Store{}

      iex> get_store!(456)
      ** (Ecto.NoResultsError)

  """
  def get_store!(id), do: Repo.get!(Store, id)

  @doc """
  Creates a store.

  ## Examples

      iex> create_store(%{field: value})
      {:ok, %Store{}}

      iex> create_store(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_store(attrs \\ %{}) do
    %Store{}
    |> Store.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a store.

  ## Examples

      iex> update_store(store, %{field: new_value})
      {:ok, %Store{}}

      iex> update_store(store, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_store(%Store{} = store, attrs) do
    store
    |> Store.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a store.

  ## Examples

      iex> delete_store(store)
      {:ok, %Store{}}

      iex> delete_store(store)
      {:error, %Ecto.Changeset{}}

  """
  def delete_store(%Store{} = store) do
    Repo.delete(store)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking store changes.

  ## Examples

      iex> change_store(store)
      %Ecto.Changeset{data: %Store{}}

  """
  def change_store(%Store{} = store, attrs \\ %{}) do
    Store.changeset(store, attrs)
  end

  alias Cellit.Market.StoreCategory

  @doc """
  Returns the list of store_categories.

  ## Examples

      iex> list_store_categories()
      [%StoreCategory{}, ...]

  """
  def list_store_categories do
    Repo.all(StoreCategory)
  end

  @doc """
  Gets a single store_category.

  Raises `Ecto.NoResultsError` if the Store category does not exist.

  ## Examples

      iex> get_store_category!(123)
      %StoreCategory{}

      iex> get_store_category!(456)
      ** (Ecto.NoResultsError)

  """
  def get_store_category!(id), do: Repo.get!(StoreCategory, id)

  @doc """
  Creates a store_category.

  ## Examples

      iex> create_store_category(%{field: value})
      {:ok, %StoreCategory{}}

      iex> create_store_category(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_store_category(attrs \\ %{}) do
    %StoreCategory{}
    |> StoreCategory.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a store_category.

  ## Examples

      iex> update_store_category(store_category, %{field: new_value})
      {:ok, %StoreCategory{}}

      iex> update_store_category(store_category, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_store_category(%StoreCategory{} = store_category, attrs) do
    store_category
    |> StoreCategory.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a store_category.

  ## Examples

      iex> delete_store_category(store_category)
      {:ok, %StoreCategory{}}

      iex> delete_store_category(store_category)
      {:error, %Ecto.Changeset{}}

  """
  def delete_store_category(%StoreCategory{} = store_category) do
    Repo.delete(store_category)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking store_category changes.

  ## Examples

      iex> change_store_category(store_category)
      %Ecto.Changeset{data: %StoreCategory{}}

  """
  def change_store_category(%StoreCategory{} = store_category, attrs \\ %{}) do
    StoreCategory.changeset(store_category, attrs)
  end
end
