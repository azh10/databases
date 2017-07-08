(function () {
  'use strict';

  var webService = function ($resource, $rootScope, ConStore, $q) {
    var APIManager={
      Req:      function(method, headers, url, data) {
        this.method =method;
        this.headers=headers;
        this.url    =url;
        this.data   =data;
      },
      Head:     function(contentType) {
        return {
          'Content-Type':  contentType,
          'Cache-Control': 'no-store'
        };
      }
    };

    var baseURL = ConStore.apiServer;
    var mockURL = 'modules/webService/mock_data';

    // A generic resource URI to set the headers.
    APIManager.genericResourceURI = function(networkConfig) {
      var validNetworkConfig = APIManager.computeConfigArgs(networkConfig);
      var headers = new APIManager.Head('application/x-www-form-urlencoded;charset=UTF-8');
      validNetworkConfig.headers = angular.extend({}, headers, validNetworkConfig.headers);

      return validNetworkConfig;
    };

    // A generic utility method for processing all Network config parameters.
    APIManager.computeConfigArgs = function(networkConfig) {
      // override the arguments with its default values when it goes undefined
      networkConfig.url = angular.isDefined(networkConfig.url) ? networkConfig.url : "";
      networkConfig.params = angular.isDefined(networkConfig.params) ? networkConfig.params : {};
      networkConfig.data = angular.isDefined(networkConfig.data) ? networkConfig.data : undefined;
      networkConfig.headers = angular.isDefined(networkConfig.headers) ? (angular.isObject(networkConfig.headers) ? networkConfig.headers : (console.log(networkConfig.headers, " is not an object"))) : {};

      return networkConfig;
    };

    // All GET request which returns an object is pipelined to @doGet method
    APIManager.doGet = function(networkConfig) {
      networkConfig = APIManager.genericResourceURI(networkConfig);
      var actualURL = baseURL + '/' + networkConfig.url;
      var resourceObject = $resource(actualURL, networkConfig.params, {
        get: {
          method: 'GET',
          params: networkConfig.params,
          isArray: false,
          headers: networkConfig.headers
        }
      }, {
        stripTrailingSlashes: false
      });
      return resourceObject.get().$promise;
    };

    // All GET request which returns an array is pipelined to @doGetAll method
    APIManager.doGetAll = function(networkConfig) {

      networkConfig = APIManager.genericResourceURI(networkConfig);
      var actualURL = baseURL + '/' + networkConfig.url;
      var resourceObject = $resource(actualURL, networkConfig.params, {
        query: {
          method: 'GET',
          params: networkConfig.params,
          isArray: true,
          headers: networkConfig.headers
        }
      }, {
        stripTrailingSlashes: false
      });

      return resourceObject.query().$promise;
    };

    APIManager.doGetMockData = function(networkConfig) {

      networkConfig = APIManager.genericResourceURI(networkConfig);
      var actualURL = mockURL + '/' + networkConfig.url;

      var resourceObject = $resource(actualURL, networkConfig.params, {
        query: {
          method: 'GET',
          isArray: false
        }
      });

      return resourceObject.query().$promise;
    };

    APIManager.doGetAllMockData = function(networkConfig) {

      networkConfig = APIManager.genericResourceURI(networkConfig);
      var actualURL = mockURL + '/' + networkConfig.url;

      var resourceObject = $resource(actualURL, networkConfig.params, {
        query: {
          method: 'GET',
          isArray: true
        }
      });

      return resourceObject.query().$promise;
    };

    // All POST request which returns an array is pipelined to @doPost method
    APIManager.doPost = function(networkConfig) {
      networkConfig = APIManager.genericResourceURI(networkConfig);
      var actualURL = baseURL + '/' + networkConfig.url;
      var resourceObject = $resource(actualURL, networkConfig.params, {
        save: {
          method: 'POST',
          headers: networkConfig.headers
        }
      }, {
        stripTrailingSlashes: false
      });
      return resourceObject.save(networkConfig.params, networkConfig.data).$promise;
    };

    // All PUT request which returns an array is pipelined to @doPut method
    APIManager.doPut = function(networkConfig) {
      var deferred = $q.defer();

      networkConfig = APIManager.genericResourceURI(networkConfig);
      var actualURL = baseURL + '/' + networkConfig.url;
      var resourceObject = $resource(actualURL, networkConfig.params, {
        put: {
          method: 'PUT',
          params: networkConfig.params,
          headers: networkConfig.headers
        }
      }, {
        stripTrailingSlashes: false
      });

      return resourceObject.put().$promise;
    };

    // All PUT request which returns an array is pipelined to @doPut method
    APIManager.doPutAll = function(networkConfig) {
      var deferred = $q.defer();

      networkConfig = APIManager.genericResourceURI(networkConfig);
      var actualURL = baseURL + '/' + networkConfig.url;
      var resourceObject = $resource(actualURL, networkConfig.params, {
        put: {
          method: 'PUT',
          params: networkConfig.params,
          headers: networkConfig.headers,
          isArray: true
        }
      }, {
        stripTrailingSlashes: false
      });

      return resourceObject.put().$promise;
    };

    APIManager.doDelete = function(networkConfig) {
      var deferred = $q.defer();

      networkConfig = APIManager.genericResourceURI(networkConfig);
      var actualURL = baseURL + '/' + networkConfig.url;
      var resourceObject = $resource(actualURL, networkConfig.params, {
        Delete: {
          method: 'DELETE',
          params: networkConfig.params,
          headers: networkConfig.headers
        }
      }, {
        stripTrailingSlashes: false
      });

      return resourceObject.Delete().$promise;
    };

    APIManager.doUpload = function (networkConfig) {
      var actualURL = baseURL + '/' + networkConfig.url;
      return Upload.upload({
        url: actualURL,
        data: networkConfig.params,
        arrayKey: networkConfig.arrayKey
      });
    };

    return APIManager;
  };

  angular
    .module("Databases")
    .factory("WebService", [
      '$resource',
      '$rootScope',
      'ConStore',
      '$q',
      webService
    ]);
})();
