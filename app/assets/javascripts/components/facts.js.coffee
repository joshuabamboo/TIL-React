@Facts = React.createClass
  getInitialState: ->
    facts: @props.data
  getDefaultProps: ->
    facts: []
  render: ->
    React.DOM.div
      className: 'facts'
      React.DOM.h1
        className: 'title'
        'Facts'
      React.DOM.table
        className: 'table table-bordered'
        React.DOM.thead null
          React.DOM.th null, 'Date'
          React.DOM.th null, 'Description'
          React.DOM.th null, 'Technical'
          React.DOM.th null, 'Source'
        React.DOM.tbody null,
          for fact in @state.facts
            React.createElement Fact, key: fact.id, fact: fact