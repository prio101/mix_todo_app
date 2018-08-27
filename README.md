# TodoList

> Mix ecto project for todo list.
- simple todo app
- with ecto, poison


## Installation

```elixir
@deps [
  todolist: "~> 0.1.0"
]
```
git clone the project and then just run `mix deps.get`

```shell
> iex -S mix

> TodoList.Task.tasks

> TodoList.Task.create_task("name", "description", "status")

> TodoList.Task.show_task(id)

> TodoList.Task.delete_task(id)

> TodoList.Task.update_task(id, changeset)
```


## License

> MIT

----
Created:  2018-08-27Z
