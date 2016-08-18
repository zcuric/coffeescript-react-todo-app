React = require 'react'
classNames = require 'classnames';

class Todo extends React.Component
  render: ->
    <li className="list-group-item">
      <p>{@props.todo.task}</p>
      <strong>Completed: <i onClick={@props.onClick} className={classNames('fa fa-check-square': @props.todo.isCompleted, 'fa fa-times': !@props.todo.isCompleted)} ></i></strong>
    </li>

module.exports = Todo
