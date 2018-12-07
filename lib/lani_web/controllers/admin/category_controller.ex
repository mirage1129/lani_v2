defmodule LaniWeb.Admin.CategoryController do
  use LaniWeb, :controller

  alias Lani.Events
  alias Lani.Events.Category

  plug :authenticate_admin when action in [:new, :create, :edit, :update, :delete]

  def new(conn, _params) do
    changeset = Events.change_category(%Category{})
    render(conn, "new.html", changeset: changeset)
  end

  def create(conn, %{"category" => category_params}) do
    case Events.create_category(category_params) do
      {:ok, category} ->
        conn
        |> put_flash(:info, "Category created successfully.")
        |> redirect(to: Routes.admin_page_path(conn, :index))
      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "new.html", changeset: changeset)
    end
  end

  def edit(conn, %{"id" => id}) do
    category = Events.get_category!(id)
    changeset = Events.change_category(category)
    render(conn, "edit.html", category: category, changeset: changeset)
  end

  def update(conn, %{"id" => id, "category" => category_params}) do
    category = Events.get_category!(id)

    case Events.update_category(category, category_params) do
      {:ok, category} ->
        conn
        |> put_flash(:info, "Category updated successfully.")
        |> redirect(to: Routes.admin_page_path(conn, :index))
      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "edit.html", category: category, changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    category = Events.get_category!(id)
    {:ok, _category} = Events.delete_category(category)

    conn
    |> put_flash(:info, "Category deleted successfully.")
    |> redirect(to: Routes.admin_category_path(conn, :index))
  end

  # def index(conn, _params) do
  #   categories = Events.list_categories()
  #   render(conn, "index.html", categories: categories)
  # end
  
    # def show(conn, %{"id" => id}) do
  #   category = Events.get_category!(id)
  #   render(conn, "show.html", category: category)
  # end
end
