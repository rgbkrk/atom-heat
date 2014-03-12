HeatView = require './heat-view'

module.exports =
  heatView: null

  activate: (state) ->
    @heatView = new HeatView(state.heatViewState)

  deactivate: ->
    @heatView.destroy()

  serialize: ->
    heatViewState: @heatView.serialize()
