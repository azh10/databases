(function () {
  'use strict';

  var RsoController = function (RsoService, ConStore) {
    var self = this;

    this.getAll = function () {
      RsoService.getAll().then(function (response) {
        self.list = response;
      });
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
  };

  angular
    .module('Cipher')
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
