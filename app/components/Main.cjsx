React = require 'react'
ReactDOM = require 'react-dom'
TodosList = require './TodosList'

Main = React.createClass
  render: ->
    <TodosList />


ReactDOM.render <Main/>, document.getElementById 'app'
