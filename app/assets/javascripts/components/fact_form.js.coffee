@FactForm = React.createClass
  getInitialState: ->
    date: ''
    description: ''
    src: ''
    technical: ''
  handleValueChange: (e)->
    valueName = e.target.name
    @setState "#{valueName}": e.target.value
  valid: ->
    @state.date && @state.description && @state.src && @state.technical
  handleSubmit: (e) ->
    e.preventDefault()
    $.post '/facts', {fact: @state}, (data) =>
      @props.handleNewFact data
      @setState @getInitialState()
    , 'JSON'
  render: ->
    React.DOM.form
      className: 'form-inline'
      onSubmit: @handleSubmit
      React.DOM.div
        className: 'form-group'
        React.DOM.input
          type: 'date'
          className: 'form-control'
          placeholder: 'date'
          name: 'date'
          value: @state.date
          onChange: @handleValueChange
      React.DOM.input
          type: 'text'
          className: 'form-control'
          placeholder: 'description'
          name: 'description'
          value: @state.description
          onChange: @handleValueChange
      React.DOM.input
          type: 'text'
          className: 'form-control'
          placeholder: 'link'
          name: 'src'
          value: @state.src
          onChange: @handleValueChange
      React.DOM.input
          type: 'boolean'
          className: 'form-control'
          placeholder: 'technical? t/f'
          name: 'technical'
          value: @state.technical
          onChange: @handleValueChange
      React.DOM.button
        type: 'submit'
        className: 'btn btn-primary'
        disable: !@valid()
        'Create Fact'