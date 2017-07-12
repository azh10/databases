(function () {
  'use strict';

  var RsoController = function (RsoService, ConStore, $rootScope) {
    var self = this;

    this.join = function (rsoid) {
      RsoService.join(rsoid).then(function (response) {
        self.getJoinedRSO();
        self.getOtherRSO();
      });
    };
    this.leave = function (rsoid) {
      RsoService.leave(rsoid).then(function (response) {
        self.getOtherRSO();
        self.getJoinedRSO();
      });
    };

    this.getJoinedRSO = function () {
      RsoService.getJoinedRSO().then(function (response) {
        self.joinedlist = response;
      });
    };
    this.getOtherRSO = function () {
      RsoService.getOtherRSO().then(function (response) {
        self.otherlist = response;
      });
    };

    this.show = function (who, what, event) {
      if (self.eventlist)
        RsoService.getMessages(event.id).then(function (resp) {
          self.shownEvent = event;
          self.comments = resp;
        });
      else
        RsoService.getEvents(who.id).then(function (resp) {
          self.eventlist = resp;
        });
      self.shownRso = who;
      self.shownPage = what;
    };

    this.add = function(){
      RsoService.createMessage(self.shownEvent.id, self.newcomment, $rootScope.credential.id).then(function (resp) {
        self.comments.push(resp);
        self.newcomment = "";
      });
    };
    this.del = function(i, id){
      RsoService.deleteMessage(self.shownEvent.id, id).then(function () {
        self.comments.splice(i,1);
      });
    };
    this.edit = function (i) {
      RsoService.updateMessage(self.shownEvent.id, self.comments[i])
    };

    this.checkOwner = function (id) {
      return $rootScope.credential.id === id;
    };

    this.init = function () {
      self.getJoinedRSO();
      self.getOtherRSO();
    };

    this.init();
  };

  var RsoService = function (WebService, $rootScope) {
    this.join = function (id) {
      return WebService.doPost({
        url: 'user/' + $rootScope.credential.id,
        params: {
          joinrso: id
        }
      });
    };
    this.leave = function (id) {
      return WebService.doPost({
        url: 'user/' + $rootScope.credential.id,
        params: {
          leaverso: id
        }
      });
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

    this.getJoinedRSO = function () {
      return WebService.doGetAll({
        url: 'rso',
        params: {
          user: $rootScope.credential.id
        }
      });
    };
    this.getOtherRSO = function () {
      return WebService.doGetAll({
        url: 'rso/reversed',
        params: {
          user: $rootScope.credential.id
        }
      });
    };
    this.singleEvent = function (id){
      return WebService.doGetAll({url: 'event/'+ id});
    };
    this.getEvents = function (id) {
      return WebService.doGetAll({url: 'event/rso/'+ id});
    };
  };

  angular
    .module('Databases')
    .service('RsoService', [
      'WebService',
      '$rootScope',
      RsoService
    ])
    .config(['$stateProvider', function ($stateProvider) {
      $stateProvider
        .state('portal.rso', {
          url: '',
          templateUrl: 'component/rso/rso.html',
          controllerAs: 'rso',
          controller: 'RsoController'
        });
    }])
    .controller('RsoController', [
      'RsoService',
      'ConStore',
      '$rootScope',
      RsoController
    ]);
})();
