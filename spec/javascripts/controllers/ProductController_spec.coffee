describe "ProductsController", ->
  scope        = null
  ctrl         = null
  routeParams  = null
  httpBackend  = null
  flash        = null
  location     = null
  productId    = 42

  fakeproduct  =
    id: productId
    name: "Baked Potatoes"
    price: 45

  setupController =(productExists=true,productId=42)->
    inject(($location, $routeParams, $rootScope, $httpBackend, $controller, _flash_)->
      scope       = $rootScope.$new()
      location    = $location
      httpBackend = $httpBackend
      routeParams = $routeParams
      routeParams.productId = productId if productId
      flash = _flash_

      if productId
        request = new RegExp("\/products/#{productId}")
        results = if productExists
          [200,fakeproduct]
        else
          [404]

        httpBackend.expectGET(request).respond(results[0],results[1])

      ctrl        = $controller('ProductController',
                                $scope: scope)
    )

  beforeEach(module("barpos"))

  afterEach ->
    httpBackend.verifyNoOutstandingExpectation()
    httpBackend.verifyNoOutstandingRequest()

  describe 'controller initialization', ->
    describe 'product is found', ->
      beforeEach(setupController())
      it 'loads the given product', ->
        httpBackend.flush()
        expect(scope.product).toEqualData(fakeproduct)
    describe 'product is not found', ->
      beforeEach(setupController(false))
      it 'loads the given product', ->
        httpBackend.flush()
        expect(scope.product).toBe(null)
        expect(flash.error).toBe("There is no product with ID #{productId}")

  describe 'create', ->
    newproduct =
      id: 42
      name: 'Toast'
      price: 10.3

    beforeEach ->
      setupController(false,false)
      request = new RegExp("\/products")
      httpBackend.expectPOST(request).respond(201,newproduct)

    it 'posts to the backend', ->
      scope.product.name         = newproduct.name
      scope.product.instructions = newproduct.instructions
      scope.save()
      httpBackend.flush()
      expect(location.path()).toBe("/products/#{newproduct.id}")

  describe 'update', ->
    updatedproduct =
      name: 'Toast'
      instructions: 'put in toaster, push lever, add butter'

    beforeEach ->
      setupController()
      httpBackend.flush()
      request = new RegExp("\/products")
      httpBackend.expectPUT(request).respond(204)

    it 'posts to the backend', ->
      scope.product.name         = updatedproduct.name
      scope.product.instructions = updatedproduct.instructions
      scope.save()
      httpBackend.flush()
      expect(location.path()).toBe("/products/#{scope.product.id}")

  describe 'delete' ,->
    beforeEach ->
      setupController()
      httpBackend.flush()
      request = new RegExp("\/products/#{scope.product.id}")
      httpBackend.expectDELETE(request).respond(204)

    it 'posts to the backend', ->
      scope.delete()
      httpBackend.flush()
      expect(location.path()).toBe("/")