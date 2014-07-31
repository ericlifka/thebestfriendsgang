`import DS from 'ember-data'`

Message = DS.Model.extend
    from: DS.attr()
    room: DS.belongsTo 'room', { inverse: 'messages', async: true }
    at: DS.attr()
    body: DS.attr()

`export default Message`