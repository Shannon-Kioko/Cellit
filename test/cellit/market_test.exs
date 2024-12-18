defmodule Cellit.MarketTest do
  use Cellit.DataCase

  alias Cellit.Market

  describe "stores" do
    alias Cellit.Market.Store

    import Cellit.MarketFixtures

    @invalid_attrs %{categories: nil, name: nil}

    test "list_stores/0 returns all stores" do
      store = store_fixture()
      assert Market.list_stores() == [store]
    end

    test "get_store!/1 returns the store with given id" do
      store = store_fixture()
      assert Market.get_store!(store.id) == store
    end

    test "create_store/1 with valid data creates a store" do
      valid_attrs = %{categories: [], name: "some name"}

      assert {:ok, %Store{} = store} = Market.create_store(valid_attrs)
      assert store.categories == []
      assert store.name == "some name"
    end

    test "create_store/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Market.create_store(@invalid_attrs)
    end

    test "update_store/2 with valid data updates the store" do
      store = store_fixture()
      update_attrs = %{categories: [], name: "some updated name"}

      assert {:ok, %Store{} = store} = Market.update_store(store, update_attrs)
      assert store.categories == []
      assert store.name == "some updated name"
    end

    test "update_store/2 with invalid data returns error changeset" do
      store = store_fixture()
      assert {:error, %Ecto.Changeset{}} = Market.update_store(store, @invalid_attrs)
      assert store == Market.get_store!(store.id)
    end

    test "delete_store/1 deletes the store" do
      store = store_fixture()
      assert {:ok, %Store{}} = Market.delete_store(store)
      assert_raise Ecto.NoResultsError, fn -> Market.get_store!(store.id) end
    end

    test "change_store/1 returns a store changeset" do
      store = store_fixture()
      assert %Ecto.Changeset{} = Market.change_store(store)
    end
  end

  describe "stores_categories" do
    alias Cellit.Market.StoreCategory

    import Cellit.MarketFixtures

    @invalid_attrs %{}

    test "list_stores_categories/0 returns all stores_categories" do
      store_category = store_category_fixture()
      assert Market.list_stores_categories() == [store_category]
    end

    test "get_store_category!/1 returns the store_category with given id" do
      store_category = store_category_fixture()
      assert Market.get_store_category!(store_category.id) == store_category
    end

    test "create_store_category/1 with valid data creates a store_category" do
      valid_attrs = %{}

      assert {:ok, %StoreCategory{} = store_category} = Market.create_store_category(valid_attrs)
    end

    test "create_store_category/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Market.create_store_category(@invalid_attrs)
    end

    test "update_store_category/2 with valid data updates the store_category" do
      store_category = store_category_fixture()
      update_attrs = %{}

      assert {:ok, %StoreCategory{} = store_category} =
               Market.update_store_category(store_category, update_attrs)
    end

    test "update_store_category/2 with invalid data returns error changeset" do
      store_category = store_category_fixture()

      assert {:error, %Ecto.Changeset{}} =
               Market.update_store_category(store_category, @invalid_attrs)

      assert store_category == Market.get_store_category!(store_category.id)
    end

    test "delete_store_category/1 deletes the store_category" do
      store_category = store_category_fixture()
      assert {:ok, %StoreCategory{}} = Market.delete_store_category(store_category)
      assert_raise Ecto.NoResultsError, fn -> Market.get_store_category!(store_category.id) end
    end

    test "change_store_category/1 returns a store_category changeset" do
      store_category = store_category_fixture()
      assert %Ecto.Changeset{} = Market.change_store_category(store_category)
    end
  end

  describe "store_categories" do
    alias Cellit.Market.StoreCategory

    import Cellit.MarketFixtures

    @invalid_attrs %{}

    test "list_store_categories/0 returns all store_categories" do
      store_category = store_category_fixture()
      assert Market.list_store_categories() == [store_category]
    end

    test "get_store_category!/1 returns the store_category with given id" do
      store_category = store_category_fixture()
      assert Market.get_store_category!(store_category.id) == store_category
    end

    test "create_store_category/1 with valid data creates a store_category" do
      valid_attrs = %{}

      assert {:ok, %StoreCategory{} = store_category} = Market.create_store_category(valid_attrs)
    end

    test "create_store_category/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Market.create_store_category(@invalid_attrs)
    end

    test "update_store_category/2 with valid data updates the store_category" do
      store_category = store_category_fixture()
      update_attrs = %{}

      assert {:ok, %StoreCategory{} = store_category} =
               Market.update_store_category(store_category, update_attrs)
    end

    test "update_store_category/2 with invalid data returns error changeset" do
      store_category = store_category_fixture()

      assert {:error, %Ecto.Changeset{}} =
               Market.update_store_category(store_category, @invalid_attrs)

      assert store_category == Market.get_store_category!(store_category.id)
    end

    test "delete_store_category/1 deletes the store_category" do
      store_category = store_category_fixture()
      assert {:ok, %StoreCategory{}} = Market.delete_store_category(store_category)
      assert_raise Ecto.NoResultsError, fn -> Market.get_store_category!(store_category.id) end
    end

    test "change_store_category/1 returns a store_category changeset" do
      store_category = store_category_fixture()
      assert %Ecto.Changeset{} = Market.change_store_category(store_category)
    end
  end
end
