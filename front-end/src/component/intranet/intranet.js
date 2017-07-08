(function () {
  'use strict';

  var IntranetController = function ($scope) {
    var self = this;

    this.init = function () {
      $scope.msg = 'Intranet works!';
    };

    this.init();
  };

  angular
      .module('Databases')
      .service('intranet', [])
      .config(['$stateProvider', function ($stateProvider) {
        $stateProvider
            .state('intranet', {
              url: '/intranet',
              templateUrl: 'component/intranet/intranet.html',
              controllerAs: 'intranet',
              controller: 'IntranetController'
            });
      }])
      .controller('IntranetController', [
        '$scope',
        IntranetController
      ]);
})();
