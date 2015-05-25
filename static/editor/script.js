var myApp = angular.module('myApp', ['fg', 'ngSanitize']);

myApp.controller('MyController', function($scope) {
  $scope.myForm = {
    schema: {}
  };
});
