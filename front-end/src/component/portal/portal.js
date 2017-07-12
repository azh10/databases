(function () {
  'use strict';

  var PortalController = function (PortalService, ConStore, $rootScope) {
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

    self.createRSO = function () {
      if (self.members.length > 4)
        PortalService.createRSO(self.newRSO.name, $rootScope.credential.uni_id, self.members).then(function (resp) {
          self.members = [];
          self.newRSO = undefined;
          self.showModal = false;
        });
    };

    self.signup = function () {
      var university = document.getElementById("new-rso").selectedIndex;
      if (self.show_signup_uni)
        PortalService.createUser(self.newname, self.newemail, self.newpassword, undefined, self.newUni.about, self.newUni.name, self.newUni.location, self.newUni.url, undefined).then(function (resp) {
          delete self.newname;
          delete self.newemail;
          delete self.newpassword;
          self.newUni.about = self.newUni.name = self.newUni.location = self.newUni.url = undefined;
          self.newuser = true;
          self.show_signup = false;
          self.show_signup_uni = false;
        });
      else if (self.show_signup)
        PortalService.createUser(self.newname, self.newemail, self.newpassword, university, undefined, undefined, undefined, undefined).then(function (resp) {
          delete self.newname;
          delete self.newemail;
          delete self.newpassword;
          self.newuser = true;
          self.show_signup = false;
        });
    };

    self.members = [];
    this.add = function(){
      var parts = self.newmember.split('@');
      if (parts[1] === undefined) return;

      if (!self.memberDomain)
        self.memberDomain = parts[1];
      if (parts[1] === self.memberDomain) {
        self.members.push(self.newmember);
        self.newmember = "";
      }
    };
    this.del = function(i){
      self.members.splice(i,1);
      if (!self.members.length)
        self.memberDomain = undefined;
    };

    this.login = function () {
      PortalService.login(self.email, self.password).then(function (resp) {
        self.newuser = false;
        if (resp.id)
          $rootScope.credential = self.credential = resp;
        else
          self.signinerror = true;
      });
    };

    this.createEvent = function (event) {
      PortalService.createEvent(self.newEvent, $rootScope.credential.uni_id, event);
    };

    this.init = function () {
      //self.getAbout();
      //self.credential = true;
      PortalService.getUniversities().then(function (resp) {
        self.universities = resp;
      });
      self.tabs = [
        /*{
          url: '/users',
          route: 'portal.users',
          name: 'Users',
          template: 'component/users/users.html'
        },*/{
          url: '/rso',
          route: 'portal.rso',
          name: 'RSO',
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
          name: 'Logout',
          template: 'component/template/template.html'
        }];
      self.feVersion = ConStore.version;
      $rootScope.credential = $rootScope.credential = self.credential = {id: 1, name: "Felicity", email: "Felicity.Pullman@knights.ucf.edu", password: null, uni_id: 1};
    };

    this.init();
  };

  var PortalService = function (WebService) {
    this.getAbout = function () {
      return WebService.doGet({
        url: 'about'
      });
    };

    this.login = function (email, password) {
      return WebService.doPost({
        url: 'user/login',
        params: {
          email: email,
          password: password
        }
      });
    };

    this.createEvent = function (event, key, rso) {
      return WebService.doPost({
        url: 'event',
        params: {
          rso: rso,
          type: event.type,
          title: event.title,
          university: key,
          location: event.location,
          about: event.about,
          time: event.time
        }
      })

    };

    this.createRSO = function (name, university, emails) {
      return WebService.doPost({
        url: 'rso',
        params: {
          name: name,
          university: university,
          emails: emails
        }
      });
    };

    this.createUser = function (name, email, password, university, about, uniname, unilocation, uniiamge, rso) {
      return WebService.doPost({
        url: 'user',
        params: {
          name: name,
          email: email,
          password: password,
          university: (university===0) ? undefined : university,
          about: about,
          uniname: uniname,
          unilocation: unilocation,
          uniimage: uniiamge,
          rso: rso
        }
      });
    };

    this.getUniversities = function () {
      return WebService.doGetAll({
        url: 'university'
      });
    };
  };

  angular
    .module('Databases')
    .service('PortalService', [
      'WebService',
      '$rootScope',
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
      '$rootScope',
      PortalController
    ]);
})();
