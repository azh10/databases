(function () {
  'use strict';

  var AppController = function ($logProvider, $locationProvider, $urlRouterProvider, ConStore) {

    $logProvider.debugEnabled(ConStore.debugInfoEnabled);

    $locationProvider.hashPrefix('');
    $urlRouterProvider.otherwise('/extranet');

    console.log(ConStore.version);
  };

  angular.module('Cipher', [
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
