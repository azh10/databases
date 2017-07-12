(function () {
  'use strict';

  var RsoController = function (RsoService, ConStore) {
    var self = this;

    this.getAll = function () {
      RsoService.getAll().then(function (response) {
        self.list = response;
      });
    };

    this.show = function (who, what, event) {
      if (self.eventlist) {
        self.shownEvent = event;
      } else {
        RsoService.getEvents(who.id).then(function (resp) {
          console.log("getevents",resp);
          self.eventlist = resp;
        });
      }

      self.shownRso = who;
      self.shownPage = what;
      console.log("?",what, who, event);
    };

    this.init = function () {
      this.getAll();
    };

    this.init();
  };

  var RsoService = function (WebService) {
    this.getAll = function () {
      return WebService.doGetAll({
        url: 'rso'
      });
    };

    this.getEvents = function (id) {
      return WebService.doGetAll({url: 'event/rso/'+ id});
    };
  };

  angular
    .module('Databases')
    .service('RsoService', [
      'WebService',
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
