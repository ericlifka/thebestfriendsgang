`import Ember from 'ember'`

UserControlComponent = Ember.Component.extend
    user: null

    actions:
        setUser: ->
            nickname = @get 'nickname'
            if nickname
                @set 'user', nickname
                @sendAction 'action', nickname

        changeUser: ->
            @set 'user', null

`export default UserControlComponent`