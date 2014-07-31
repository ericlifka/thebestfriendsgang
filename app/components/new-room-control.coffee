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

        createRoom: ->
            

`export default NewRoomControlComponent`