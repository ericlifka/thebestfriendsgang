`import Ember from 'ember'`

ApplicationRoute = Ember.Route.extend
    model: ->
        @store.find 'room'

    actions:
        setUser: (user) ->
            Thebestfriendsgang.set 'user', user
            @set 'user', user

        createRoom: (name) ->
            room = @store.createRecord 'room', { name }
            room.save()

`export default ApplicationRoute`