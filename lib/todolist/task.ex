defmodule TodoList.Task do
  use Ecto.Schema
  import Poison 
  alias TodoList.Repo

  schema "tasks" do
    field :task_name
    field :task_description
    field :task_status

    timestamps()
  end

  def tasks do
    Repo.all TodoList.Task
  end

  def create_task(name, description, status) do
    %TodoList.Task{task_name: name, task_description: description, task_status: status}
    |> Repo.insert()
  end

  def show_task(id) do
    Repo.get!(TodoList.Task, id)
    |> convert_to_map
    |> drop_meta
    |> encode_poison
  end

  def update_task(id, changeset) do
    task = Repo.get!(TodoList.Task, id)
    task_change = Ecto.Changeset.change task, changeset

    case Repo.update task_change do
      {:ok, struct} -> "Updated"
      {:error, changeset} -> "can not update"
    end
  end

  def delete_task(id) do
    task = Repo.get!(TodoList.Task, id)
    case Repo.delete task do
      {:ok, struct} -> "Deleted #{id} numbered task"
      {:error, changeset} -> "Could not delete #{id} task"
    end
  end

  defp convert_to_map(task) do
    Map.from_struct(task)
  end

  defp drop_meta(task) do
    Map.drop(task, [:__meta__])
  end

  defp encode_poison(task) do
    Poison.encode!(task)
  end
end