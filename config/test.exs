use Mix.Config

config :todolist, TodoList.Repo, [
  adapter: Ecto.Adapters.Postgres,
  database: "todolist_#{Mix.env}",
  username: "postgres",
  password: "",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox]

config :logger,
  backends: [:console],
  level: :warn,
  compile_time_purge_level: :info