(function () {
  'use strict';

  var RsoController = function (RsoService, ConStore) {
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

    this.init = function () {
      self.getJoinedRSO();
      self.getOtherRSO();
      self.newevent = false;
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
      RsoController
    ]);
})();
