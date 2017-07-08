(function () {
  'use strict';

  var ModalController = function ($state, $stateParams, $timeout, toastr, $rootScope, $templateCache, $animate) {
    var self = this;

    this.initModal = function () {
      self.modal = false;
      self.showHeader = true;
      self.header = "Header";
      self.content = "none.html";
      self.closeable = true;

      self.modalClose = function () {
        if (self.closeable) {
          self.modal = false;
        }
      };

      $rootScope.killModal = function () {
        self.modal = false;
      };

      $rootScope.createModal = function (content, header) {
        if (header) {
          self.showHeader = true;
          self.header = header;
          self.closeable = true;
        } else {
          self.showHeader = false;
          self.closeable = false;
        }
        self.content = content;
        self.modal = true;
      };
    };

    this.init = function () {
      self.initModal();
    };

    this.init();
  };

  angular
      .module('Databases')
      .config(['$stateProvider', function ($stateProvider) {
        $stateProvider
            .state('modal', {
              url: '/modal',
              templateUrl: 'component/modal/modal.html',
              controllerAs: 'modal',
              controller: 'ModalController'
            });
      }])

      .controller('ModalController', [
        '$state',
        '$stateParams',
        '$timeout',
        'toastr',
        '$rootScope',
        '$templateCache',
        '$animate',
        ModalController
      ]);
})();


