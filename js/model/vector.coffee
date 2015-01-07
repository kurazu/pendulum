define ['model/point'], (Point) ->
    class Vector
        constructor: (@angle, @length) ->
        toPoint: () ->
            dx = @length * Math.cos @angle
            dy = @length * Math.sin @angle
            return new Point dx, dy
