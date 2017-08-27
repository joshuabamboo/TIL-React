@Fact = React.createClass
  render: ->
    React.DOM.tr null,
      React.DOM.td null, @props.fact.date
      React.DOM.td null, @props.fact.description
      React.DOM.td null, @props.fact.technical
      React.DOM.td null, @props.fact.src
