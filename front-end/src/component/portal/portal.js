(function () {
  'use strict';

  var PortalController = function (PortalService, ConStore) {
    var self = this;

    this.getAbout = function () {
      PortalService.getAbout().then(function (response) {
        self.about = response;
      }, function (error) {
        console.error(error);
      });
    };

    this.init = function () {
      self.getAbout();
      self.feVersion = ConStore.version;
    };

    this.init();
  };

  angular
    .module('Cipher')
    .config(['$stateProvider', function ($stateProvider) {
      $stateProvider
        .state('portal', {
          url: '',
          templateUrl: 'component/portal/portal.html',
          controllerAs: 'portal',
          controller: 'PortalController'
        });
    }])
    .controller('PortalController', [
      'PortalService',
      'ConStore',
      PortalController
    ]);
})();
