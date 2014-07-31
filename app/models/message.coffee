`import DS from 'ember-data'`
`import Ember from 'ember'`

Message = DS.Model.extend
    from: DS.attr()
    room: DS.belongsTo 'room', { inverse: 'messages', async: true }
    at: DS.attr()
    body: DS.attr()

`export default Message`