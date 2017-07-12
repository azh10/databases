(function () {
  'use strict';

  var UniversityController = function (UniversityService, ConStore) {
    var self = this;

    this.getAll = function () {
      UniversityService.getAll().then(function (response) {
        self.list = response;
      });
    };

    this.show = function (who, what, event) {
      if (self.eventlist) {
        UniversityService.getMessages(event.id).then(function (resp) {
          self.shownEvent = event;
          self.comments = resp;
          console.log("shownevent",self.shownEvent);
        });
      } else {
        UniversityService.getEvents(who.id).then(function (resp) {
          console.log(resp);
          self.eventlist = resp;
        });
      }

      self.shownUni = who;
      self.shownPage = what;
      console.log(what, who, event, "show");
    };

    this.add = function(){
        self.comments.push(self.newcomment);
        self.newcomment = "";
    };
    this.del = function(i){
      self.comments.splice(i,1);
    };

    this.init = function () {
      this.getAll();
    };

    this.init();
  };

  var UniversityService = function (WebService) {
    this.getAll = function () {
      return WebService.doGetAll({
        url: 'university'
      });
    };

    this.getEvents = function (id) {
      return WebService.doGetAll({url: 'event/university/'+ id});
    };

    this.getMessages = function (id) {
      return WebService.doGetAll({url: 'event/messages/'+ id});
    };
  };

  angular
    .module('Databases')
    .service('UniversityService', [
      'WebService',
      UniversityService
    ])
    .config(['$stateProvider', function ($stateProvider) {
      $stateProvider
        .state('portal.university', {
          url: '',
          templateUrl: 'component/university/university.html',
          controllerAs: 'university',
          controller: 'UniversityController'
        });
    }])
    .controller('UniversityController', [
      'UniversityService',
      'ConStore',
      UniversityController
    ]);
})();
