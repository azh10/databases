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

    this.cellClick = function (index) {
      self.selectedTab = index;
    };

    this.init = function () {
      self.getAbout();

      self.tabs = [
        {
          url: '/users',
          route: 'portal.users',
          name: 'Users',
          template: 'component/users/users.html'
        },{
          url: '/rso',
          route: 'portal.rso',
          name: 'Rso',
          template: 'component/rso/rso.html'
        },{
          url: '/university',
          route: 'portal.university',
          name: 'Universities',
          template: 'component/university/university.html'
        },{
          url: '/events',
          route: 'portal.events({university: undefined, rso: undefined})',
          name: 'Events',
          template: 'component/events/events.html'
        },{
          url: '/template',
          route: 'portal.template',
          name: 'Settings',
          template: 'component/template/template.html'
        },{
          url: '/template',
          route: 'portal.template',
          name: 'template',
          template: 'component/template/template.html'
        }];
      self.feVersion = ConStore.version;
    };

    this.init();
  };

  var PortalService = function (WebService) {
    this.getAbout = function () {
      return WebService.doGet({
        url: 'about'
      });
    };
  };

  angular
    .module('Cipher')
    .service('PortalService', [
      'WebService',
      PortalService
    ])
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
