(function () {
  'use strict';

  var EventsController = function (EventsService, ConStore) {
    var self = this;

    this.getAll = function () {
      EventsService.getAll().then(function (response) {
        console.log(response);
        self.list = response;
      });
    };

    this.init = function () {
      this.getAll();
    };

    this.init();
  };

  var EventsService = function (WebService) {
    this.getAll = function () {
      return WebService.doGetAll({
        url: 'event'
      });
    };
  };

  angular
    .module('Cipher')
    .service('EventsService', [
      'WebService',
      EventsService
    ])
    .config(['$stateProvider', function ($stateProvider) {
      $stateProvider
        .state('portal.events', {
          url: '',
          templateUrl: 'component/events/events.html',
          controllerAs: 'events',
          controller: 'EventsController'
        });
    }])
    .controller('EventsController', [
      'EventsService',
      'ConStore',
      EventsController
    ]);
})();
