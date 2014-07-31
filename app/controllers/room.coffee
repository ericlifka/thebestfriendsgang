`import Ember from 'ember'`

RoomController = Ember.ObjectController.extend
    actions:
        sendMessage: ->
            user = Thebestfriendsgang.get 'user'
            room = @get 'model'
            message = @get 'newMessage'
            if not user
                return alert 'Set a nickname to send messages'

            if message
                message = @store.createRecord 'message',
                    from: user
                    room: room
                    at: new Date()
                    body: message
                message.save()

`export default RoomController`