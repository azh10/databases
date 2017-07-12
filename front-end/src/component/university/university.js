(function () {
  'use strict';

  var UniversityController = function (UniversityService, ConStore, $rootScope) {
    var self = this;

    this.getAll = function () {
      UniversityService.getAll().then(function (response) {
        self.list = response;
      });
    };

    this.show = function (who, what, event) {
      if (self.eventlist)
        UniversityService.getMessages(event.id).then(function (resp) {
          self.shownEvent = event;
          self.comments = resp;
        });
      else
        UniversityService.getEvents(who.id).then(function (resp) {
          self.eventlist = resp;
        });
      self.shownUni = who;
      self.shownPage = what;
    };

    this.add = function(){
      UniversityService.createMessage(self.shownEvent.id, self.newcomment, $rootScope.credential.id).then(function (resp) {
        self.comments.push(resp);
        self.newcomment = "";
      });
    };
    this.del = function(i, id){
      UniversityService.deleteMessage(self.shownEvent.id, id).then(function () {
        self.comments.splice(i,1);
      });
    };
    this.edit = function (i) {
      UniversityService.updateMessage(self.shownEvent.id, self.comments[i])
    };

    this.checkOwner = function (id) {
      return $rootScope.credential.id === id;
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

    this.createMessage = function (id, message, user) {
      return WebService.doPost({url: 'event/messages/'+ id, params: {message: message, user: user}});
    };

    this.updateMessage = function (id, message) {
      return WebService.doPost({url: 'event/messages/'+ id + '/' + message.id, params: {message: message.message}});
    };

    this.deleteMessage = function (id, message) {
      return WebService.doDelete({url: 'event/messages/'+ id + '/' + message});
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
      '$rootScope',
      UniversityController
    ]);
})();
