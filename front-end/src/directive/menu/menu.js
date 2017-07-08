(function () {
  'use strict';

  var DatabasesMenu = function () {
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
    .module('Databases')
    .directive('cipherMenu', DatabasesMenu);
})();
