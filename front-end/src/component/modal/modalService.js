(function () {
  'use strict';

  var ModalService = function (webService) {

  };

  angular
      .module('Cipher')
      .service('ModalService', [
        'WebService',
        'ApiService',
        ModalService
      ]);
})();
