`import Ember from 'ember'`

NewRoomControlComponent = Ember.Component.extend
    showForm: false

    actions:
        showForm: ->
            @set 'showForm', true
            Ember.run.scheduleOnce 'afterRender', @, ->
                @$('.first-input').focus()

        hideForm: ->
            @set 'showForm', false
            @set 'roomName', ''

        createRoom: ->
            name = @get 'roomName'
            if name
                @set 'roomName', ''
                @sendAction 'action', name

`export default NewRoomControlComponent`