React = require 'react'

todos = [
  {
    task: "Make coffescript React tutorial",
    isCompleted: 'false'
  },
  {
    task: "Upload tutorial to GitHub",
    isCompleted: 'false'
  }
]

class TodosList extends React.Component
  constructor: (props) ->
    super props
    @state =
      todos: todos

  renderItems: (todos) ->
    <li key={item.task}>
      <p>{item.task}</p>
      <strong>Completed: {item.isCompleted}</strong>
    </li> for item in todos

  render: ->
    <div>
      <h1>Tasks</h1>
      <ul>
        {this.renderItems(todos)}
      </ul>
    </div>

module.exports = TodosList
