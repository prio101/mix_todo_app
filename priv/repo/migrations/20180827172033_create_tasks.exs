defmodule TodoList.Repo.Migrations.CreateTasks do
  use Ecto.Migration

  def change do
    create table("tasks") do
      add :task_name, :string
      add :task_description, :string
      add :task_status, :string
      timestamps()
    end
  end
end
