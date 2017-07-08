(function () {
  'use strict';

  var ModalService = function (webService) {

  };

  angular
      .module('Databases')
      .service('ModalService', [
        'WebService',
        'ApiService',
        ModalService
      ]);
})();
