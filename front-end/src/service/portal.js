(function () {
  'use strict';

  var PortalService = function (WebService) {
    this.getAbout = function () {
      return WebService.doGet({
        url: 'about'
      });
    };
  };

  angular
    .module('Cipher')
    .service('PortalService',[
      'WebService',
      PortalService
    ]);
})();
