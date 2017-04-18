(function() {

  'use strict';

  angular
    .module('authApp', ['auth0', 'angular-storage', 'angular-jwt', 'ngMaterial', 'ui.router'])
    .config(function($provide, authProvider, $urlRouterProvider, $stateProvider, $httpProvider, jwtInterceptorProvider) {

      authProvider.init({
        domain: 'williamjones.auth0.com',
        clientID: 'LGDLT1jTyvtgBtyDbum7RAJ_QBWyU_nA'
      });
    });
})();
