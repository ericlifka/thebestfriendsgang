import Ember from 'ember';

var Router = Ember.Router.extend({
  location: ThebestfriendsgangENV.locationType
});

Router.map(function() {
    this.resource('room', { path: '/room/:room_id' })
});

export default Router;
