use Mix.Config

config :todolist, TodoList.Repo, [
  adapter: Ecto.Adapters.Postgres,
  database: "todolist_#{Mix.env}",
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
]