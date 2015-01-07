define [], () ->

    class BaseController
        modelClass: null
        viewClass: null
        constructor: () ->
            args = @modelParameters.apply @, arguments
            model_constructor = this.modelClass.bind.apply this.modelClass, [null].concat args
            @model = new model_constructor
            @view = new @viewClass @model
        modelParameters: () ->
            Array::slice.call arguments
        act: (diff) ->
        draw: (ctx) ->
            @view.draw ctx
