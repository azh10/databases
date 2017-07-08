(function () {
  'use strict';

  var EventsController = function (EventsService, $stateParams) {
    var self = this;

    this.getAll = function () {
      EventsService.getAll($stateParams).then(function (response) {
        self.list = response;
      });
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
          url: '/:university?rso',
          templateUrl: 'component/events/events.html',
          controllerAs: 'events',
          controller: 'EventsController'
        });
    }])
    .controller('EventsController', [
      'EventsService',
      '$stateParams',
      EventsController
    ]);
})();
