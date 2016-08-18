React = require 'react'

class Form extends React.Component
  constructor: (props) ->
    super(props)
    @state =
        task: '',
        isCompleted: false

  handleSubmit: (e) ->
    e.preventDefault()
    @props.onFormSubmit(@state)
    @setState({
        task: ''
        isCompleted: false
    })

  onChange: (e) ->
    @setState({
        task: e.target.value
        isCompleted: false
    })

  render: ->
    <form onSubmit={@handleSubmit.bind(this)}>
      <div className="form-group">
        <input className="form-control" type="text" onChange={this.onChange.bind(this)} value={@state.task} />
      </div>
      <input className="btn btn-default" type='submit' value='Add'/>
    </form>

module.exports = Form
