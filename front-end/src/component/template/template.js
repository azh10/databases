(function () {
  'use strict';

  var TemplateController = function (TemplateService, ConStore) {
    var self = this;

    this.get = function () {
      TemplateService.get().then(function (response) {
        self.response = response;
      }, function (error) {
        console.error(error);
      });
    };

    this.init = function () {

    };

    this.init();
  };

  var TemplateService = function (WebService) {
    var self = this;

    this.get = function () {
      return WebService.doGet({
        url: 'about'
      });
    };

    this.getAll = function () {
      return WebService.doGetAll({
        url: 'about'
      });
    };

    this.post = function () {
      return WebService.doPost({
        url: 'about',
        params: {
          property: null
        }
      });
    };


      this.init = function () {

    };

    this.init();
  };

  angular
    .module('Cipher')
    .service('TemplateService', [
      'WebService',
      TemplateService
    ])
    .config(['$stateProvider', function ($stateProvider) {
      $stateProvider
        .state('portal.template', {
          url: '',
          templateUrl: 'component/template/template.html',
          controllerAs: 'template',
          controller: 'TemplateController'
        });
    }])
    .controller('TemplateController', [
      'TemplateService',
      'ConStore',
      TemplateController
    ]);
})();
