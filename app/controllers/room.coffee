`import Ember from 'ember'`

RoomController = Ember.ObjectController.extend
    actions:
        sendMessage: (message) ->
            user = Thebestfriendsgang.get 'user'
            room = @get 'model'
            if not user
                return alert 'Set a nickname to send messages'

            message = @store.createRecord 'message',
                from: user
                room: room
                at: new Date()
                body: message
            message.save().then =>
                room.get('messages').pushObject message
                room.save()


`export default RoomController`