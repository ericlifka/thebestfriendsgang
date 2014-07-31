`import Ember from 'ember'`

MessageInputComponent = Ember.Component.extend
    attachKeyListener: Ember.on 'didInsertElement', ->
        input = @$ 'textarea'
        input.on 'keyDown', (event) =>
            @keyDown event

    keyDown: (event) ->
        if event.keyCode is 13
            event.preventDefault()
            @sendMessage()

    sendMessage: ->
        message = @get 'message'
        if message
            @set 'message', ''
            @sendAction 'action', message

`export default MessageInputComponent`