(function () {
  'use strict';

  var UsersController = function (UsersService, ConStore) {
    var self = this;

    this.getAll = function () {
      UsersService.getAll().then(function (response) {
        self.list = response;
      });
    };

    this.init = function () {
      this.getAll();
    };

    this.init();
  };

  var UsersService = function (WebService) {
    this.getAll = function () {
      return WebService.doGetAll({
        url: 'user'
      });
    };
  };

  angular
    .module('Cipher')
    .service('UsersService', [
      'WebService',
      UsersService
    ])
    .config(['$stateProvider', function ($stateProvider) {
      $stateProvider
        .state('portal.users', {
          url: '',
          templateUrl: 'component/users/users.html',
          controllerAs: 'users',
          controller: 'UsersController'
        });
    }])
    .controller('UsersController', [
      'UsersService',
      'ConStore',
      UsersController
    ]);
})();
