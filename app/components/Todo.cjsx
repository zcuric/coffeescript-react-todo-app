React = require 'react'
classNames = require 'classnames';

class Todo extends React.Component
  handleClick: ->
    this.setState({isCompleted: true})

  render: ->
    <li>
      <p>{@props.todo.task}</p>
      <strong>Completed: <i onClick={@handleClick.bind(this)} className={classNames('fa fa-check-square': @props.todo.isCompleted, 'fa fa-times': !@props.todo.isCompleted)} ></i></strong>
    </li>

module.exports = Todo
