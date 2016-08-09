React = require 'react'
ReactDOM = require 'react-dom'
TodosList = require './TodosList'

class Main extends React.Component
  render: ->
    <TodosList />


ReactDOM.render(<Main/>, document.getElementById('app'))
