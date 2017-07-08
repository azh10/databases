(function () {
  'use strict';

  var UniversityController = function (UniversityService, ConStore) {
    var self = this;

    this.getAll = function () {
      UniversityService.getAll().then(function (response) {
        self.list = response;
      });
    };

    this.init = function () {
      this.getAll();
    };

    this.init();
  };

  var UniversityService = function (WebService) {
    this.getAll = function () {
      return WebService.doGetAll({
        url: 'university'
      });
    };
  };

  angular
    .module('Databases')
    .service('UniversityService', [
      'WebService',
      UniversityService
    ])
    .config(['$stateProvider', function ($stateProvider) {
      $stateProvider
        .state('portal.university', {
          url: '',
          templateUrl: 'component/university/university.html',
          controllerAs: 'university',
          controller: 'UniversityController'
        });
    }])
    .controller('UniversityController', [
      'UniversityService',
      'ConStore',
      UniversityController
    ]);
})();
