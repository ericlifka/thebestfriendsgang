`import Ember from 'ember'`

MessageRowComponent = Ember.Component.extend
    fromYou: Ember.computed 'message.from', 'Thebestfriendsgange.user', ->
        @get('message.from') is Thebestfriendsgang.get 'user'

    timestamp: Ember.computed 'message.at', ->
        moment(@get 'message.at').format @formatString()

    formatString: ->
        if @isToday()
            'h:mma'
        else if @isThisWeek()
            'ddd h:mma'
        else
            'MMM D h:mma'

    isToday: ->
        moment().isSame @get('message.at'), 'day'

    isThisWeek: ->
        moment().isSame @get('message.at'), 'week'
            
`export default MessageRowComponent`