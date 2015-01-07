define [], () ->

    class BaseController
        model_class: null
        view_class: null
        constructor: () ->
            args = @modelParameters.apply @, arguments
            model_constructor = this.model_class.bind.apply this.model_class, [null].concat args
            @model = new model_constructor
            @view = new @view_class @model
        modelParameters: () ->
            Array::slice.call arguments
        act: (diff) ->
        draw: (ctx) ->
            @view.draw ctx
