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
            @ctx.translate 0, @canvas.height
            @ctx.scale 1, -1
            @add new Screen @canvas.width, @canvas.height
            left = new Pendulum 100, 250, 100, 1
            left.model.setAngle -Math.PI / 4
            left.model.setStyle 'green'
            center = new Pendulum 300, 250, 100, 1
            right = new Pendulum 500, 250, 100, 1
            right.model.setAngle Math.PI / 4
            right.model.setStyle 'red'
            @add left
            @add center
            @add right


