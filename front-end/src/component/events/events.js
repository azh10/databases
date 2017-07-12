(function () {
  'use strict';

  var EventsController = function (EventsService, $rootScope,$stateParams) {
    var self = this;

    this.getAll = function () {
      EventsService.getAll($stateParams).then(function (response) {
        self.list = response;
      });
    };
    this.show = function (who, what, event) {
      if (self.list)
        EventsService.getMessages(event.id).then(function (resp) {
          self.shownEvent = event;
          self.comments = resp;
          console.log(resp);
        });
        else
          EventsService.getEvents(who.id).then(function (resp) {
            self.eventlist = resp;
          });
        self.shownRso = who;
        self.shownPage = what;
      };

      this.add = function(){
        EventsService.createMessage(self.shownEvent.id, self.newcomment, $rootScope.credential.id).then(function (resp) {
          self.comments.push(resp);
          self.newcomment = "";
        });
      };
      this.del = function(i, id){
        EventsService.deleteMessage(self.shownEvent.id, id).then(function () {
          self.comments.splice(i,1);
        });
      };
      this.edit = function (i) {
        EventsService.updateMessage(self.shownEvent.id, self.comments[i]);
      };

      this.checkOwner = function (id) {
        return $rootScope.credential.id === id;
      };

    this.init = function () {
      this.getAll();
    };

    this.init();
  };

  var EventsService = function (WebService) {
    this.getAll = function (params) {
      if (params.university && params.university.length)
        return WebService.doGetAll({url: 'event/university/'+ params.university});

      if (params.rso && params.rso.length)
        return WebService.doGetAll({url: 'event/rso/'+ params.rso});

      return WebService.doGetAll({url: 'event'});

    };
    this.getMessages = function (id) {
      return WebService.doGetAll({url: 'event/messages/'+ id});
    };

    this.createMessage = function (id, message, user) {
      return WebService.doPost({url: 'event/messages/'+ id, params: {message: message, user: user}});
    };

    this.updateMessage = function (id, message) {
      return WebService.doPost({url: 'event/messages/'+ id + '/' + message.id, params: {message: message.message}});
    };

    this.deleteMessage = function (id, message) {
      return WebService.doDelete({url: 'event/messages/'+ id + '/' + message});
    };

  };

  angular
    .module('Databases')
    .service('EventsService', [
      'WebService',
      EventsService
    ])
    .config(['$stateProvider', function ($stateProvider) {
      $stateProvider
        .state('portal.events', {
          url: '/events/:university?rso',
          templateUrl: 'component/events/events.html',
          controllerAs: 'events',
          controller: 'EventsController'
        });
    }])
    .controller('EventsController', [
      'EventsService',
      '$rootScope',
      '$stateParams',
      EventsController
    ]);
})();
