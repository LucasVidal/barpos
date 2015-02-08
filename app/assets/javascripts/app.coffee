
barpos = angular.module('barpos',[
  'templates',
  'ngRoute',
  'ngResource',
  'controllers',
])

barpos.config([ '$routeProvider',
  ($routeProvider)->
    $routeProvider
      .when('/',
        templateUrl: "index.html"
        controller: 'TablesController'
      #  controller: 'ProductsController'
      )
      #.when('/product/:productId',
      #  templateUrl: "show.html"
      #  controller: 'ProductController'
      # )
])
controllers = angular.module('controllers',[])
