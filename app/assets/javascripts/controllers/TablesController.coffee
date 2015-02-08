controllers = angular.module('controllers')
controllers.controller("TablesController", [ '$scope', '$routeParams', '$location', '$resource'
  ($scope,$routeParams,$location,$resource)->
    $scope.search = (keywords)->  $location.path("/").search('keywords',keywords)
    Table = $resource('/tables/:tableId', { tableId: "@id", format: 'json' })

    Table.query((results) -> $scope.tables = results)
    
    $scope.view = (tableId)-> $location.path("/tables/#{tableId}")
    $scope.newProduct = -> $location.path("/orders/new")
    $scope.edit      = (tableId)-> $location.path("/tables/#{tableId}/edit")
])