define [], () ->

    class PendulumModel
        defaultStyle: 'black'
        constructor: (@anchor, @vector, @weight) ->
            @setStyle @defaultStyle
        getEndPoint: () ->
            return @anchor.addVector @vector
        setStyle: (@style) ->



