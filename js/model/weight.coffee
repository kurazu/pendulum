define [], () ->
    class Weight
        constructor: (@mass, @frictionFactor=0.1, @velocity=0) ->
