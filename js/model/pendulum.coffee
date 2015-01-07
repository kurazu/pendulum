define ['model/vector'], (Vector) ->

    class PendulumModel
        defaultStyle: 'black'
        constructor: (@anchor, @length, @weight) ->
            @setAngle 0
            @setStyle @defaultStyle
        setAngle: (@angle) ->
            arrow = new Vector angle + (Math.PI * 1.5), @length
            @position = @anchor.addVector arrow
        setStyle: (@style) ->



