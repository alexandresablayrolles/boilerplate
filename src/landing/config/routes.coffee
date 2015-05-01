angular.module '%module%.landing'
.config ($stateProvider, $urlRouterProvider) ->
  $urlRouterProvider.otherwise "/"
  $stateProvider
  .state 'landing',
    url: '/'
    templateUrl: 'landing/views/view.html'
  .state 'dashboard',
    url: '/dash'
    templateUrl: 'landing/views/controlpanel.html'
