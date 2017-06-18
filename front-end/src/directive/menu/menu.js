(function () {
  'use strict';

  var CipherMenu = function () {
    return {
      templateUrl: 'directive/menu/menu.html',
      restrict: 'E',
      replace: true,
      transclude: true,
      scope: {
        menuColor: '='
      },
      controller: ['$scope', function ($scope) {
        $scope.init = function () {
        };

        $scope.init();
      }]
    };
  };

  angular
    .module('Cipher')
    .directive('cipherMenu', CipherMenu);
})();
