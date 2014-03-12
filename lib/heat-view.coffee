{View} = require 'atom'

module.exports =
class HeatView extends View
  @content: ->
    @div class: 'heat overlay from-top', =>
      @div "HOT HOT HOT!", class: "message"

  initialize: (serializeState) ->
    atom.workspaceView.command "heat:toggle", => @toggle()

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @detach()

  toggle: ->
    console.log "HeatView was toggled!"
    if @hasParent()
      @detach()
    else
      atom.workspaceView.append(this)
