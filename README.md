# TodoList

> Mix ecto project for todo list.
---
Simple todo app created for working with Ecto over the small mix created project. 


## Installation

```elixir
@deps [
  todolist: "~> 0.1.0"
]
```
`git clone project-url` the project and then just
`cd project` and run  
`mix deps.get`

```bash
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
