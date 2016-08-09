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
    isCompleted: false
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

  renderTodos: (todos) ->
    <Todo key={todo.task} todo={todo} /> for todo in todos

  render: ->
    <div>
      <h1>Tasks</h1>
      <ul>
        {@renderTodos(@state.todos)}
      </ul>
      <Form onFormSubmit={@updateTodos.bind(this)} />
    </div>

module.exports = TodosList
