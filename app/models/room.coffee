`import DS from 'ember-data'`

Room = DS.Model.extend
    name: DS.attr()
    messages: DS.hasMany 'message', { inverse: 'room', async: true }

`export default Room`