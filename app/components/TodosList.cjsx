React = require 'react'
Todo = require './Todo'
Form = require './Form'
classNames = require 'classnames';

todos = [
  {
    task: "Make coffescript React tutorial",
    isCompleted: false
  },
  {
    task: "Upload tutorial to GitHub",
    isCompleted: true
  }
]

class TodosList extends React.Component
  constructor: (props) ->
    super(props)
    @state =
      todos: todos

  updateTodos: (newTodo) ->
    allTodos = @state.todos.concat([newTodo])
    @setState(todos: allTodos)

  handleClick: (index) ->
    allTodos = @state.todos;
    allTodos[index] = @toogleTodo(allTodos[index])
    @setState {todos: allTodos}

  toogleTodo: (todo) ->
    todo.isCompleted = !todo.isCompleted
    return todo

  renderTodos: (todos) ->
    <Todo key={i} todo={todo} ref={'todo' + i} onClick={@handleClick.bind(this, i)} /> for todo, i in todos

  render: ->
    <div>
      <h1>Tasks</h1>
      <ul className="list-group">
        {@renderTodos(@state.todos)}
      </ul>
      <Form onFormSubmit={@updateTodos.bind(this)} />
    </div>

module.exports = TodosList
