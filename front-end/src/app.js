(function () {
  'use strict';

  var AppController = function ($logProvider, $locationProvider, $urlRouterProvider, ConStore) {

    $logProvider.debugEnabled(ConStore.debugInfoEnabled);

    $locationProvider.hashPrefix('');
    //$urlRouterProvider.otherwise('/extranet');

    $urlRouterProvider
      .when('/', function ($state) {
        $state.go('portal');
      });

    console.log(ConStore.version);
  };

  angular.module('Databases', [
    'ui.router',
    'ngResource',
    'ngAnimate',
    'config'
  ]).config([
    '$logProvider',
    '$locationProvider',
    '$urlRouterProvider',
    'ConStore',
    AppController
  ]);
})();
