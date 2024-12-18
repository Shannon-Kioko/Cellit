defmodule Cellit.ProductsTest do
  use Cellit.DataCase

  alias Cellit.Products

  describe "items" do
    alias Cellit.Products.Item

    import Cellit.ProductsFixtures

    @invalid_attrs %{
      available: nil,
      brand: nil,
      category_id: nil,
      description: nil,
      min_order: nil,
      name: nil,
      price: nil
    }

    test "list_items/0 returns all items" do
      item = item_fixture()
      assert Products.list_items() == [item]
    end

    test "get_item!/1 returns the item with given id" do
      item = item_fixture()
      assert Products.get_item!(item.id) == item
    end

    test "create_item/1 with valid data creates a item" do
      valid_attrs = %{
        available: 42,
        brand: "some brand",
        category_id: 42,
        description: "some description",
        min_order: 42,
        name: "some name",
        price: 120.5
      }

      assert {:ok, %Item{} = item} = Products.create_item(valid_attrs)
      assert item.available == 42
      assert item.brand == "some brand"
      assert item.category_id == 42
      assert item.description == "some description"
      assert item.min_order == 42
      assert item.name == "some name"
      assert item.price == 120.5
    end

    test "create_item/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Products.create_item(@invalid_attrs)
    end

    test "update_item/2 with valid data updates the item" do
      item = item_fixture()

      update_attrs = %{
        available: 43,
        brand: "some updated brand",
        category_id: 43,
        description: "some updated description",
        min_order: 43,
        name: "some updated name",
        price: 456.7
      }

      assert {:ok, %Item{} = item} = Products.update_item(item, update_attrs)
      assert item.available == 43
      assert item.brand == "some updated brand"
      assert item.category_id == 43
      assert item.description == "some updated description"
      assert item.min_order == 43
      assert item.name == "some updated name"
      assert item.price == 456.7
    end

    test "update_item/2 with invalid data returns error changeset" do
      item = item_fixture()
      assert {:error, %Ecto.Changeset{}} = Products.update_item(item, @invalid_attrs)
      assert item == Products.get_item!(item.id)
    end

    test "delete_item/1 deletes the item" do
      item = item_fixture()
      assert {:ok, %Item{}} = Products.delete_item(item)
      assert_raise Ecto.NoResultsError, fn -> Products.get_item!(item.id) end
    end

    test "change_item/1 returns a item changeset" do
      item = item_fixture()
      assert %Ecto.Changeset{} = Products.change_item(item)
    end
  end
end
