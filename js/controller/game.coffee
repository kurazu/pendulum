define ['util/loop', 'controller/screen', 'controller/pendulum'], (run_loop, Screen, Pendulum) ->

    class Game
        constructor: (@canvas) ->
            @ctx = canvas.getContext '2d'
            @objects = []
        start: () ->
            @prepare()
            run_loop @step.bind(@), 8, 64
        step: (diff) ->
            for object in @objects
                object.act diff
            for object in @objects
                object.draw @ctx
        add: (object) ->
            @objects.push object
        prepare: () ->
            @add new Screen @canvas.width, @canvas.height
            @add new Pendulum 200, 100, 200, 1


