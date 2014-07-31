`import Ember from 'ember'`

ApplicationRoute = Ember.Route.extend
    actions:
        setUser: (user) ->
            Thebestfriendsgang.set 'user', user
            @set 'user', user

`export default ApplicationRoute`