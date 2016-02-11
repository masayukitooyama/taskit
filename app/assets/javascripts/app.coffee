module = angular.module('app', ['ngResource', 'ui.bootstrap'])
module.controller 'AppController', ['$scope', ($scope) -> ]

$(document).on 'ready page:load', () ->
  angular.bootstrap document.body, ['app']
