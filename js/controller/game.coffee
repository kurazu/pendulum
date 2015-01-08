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

            @screen.beginDraw @ctx
            for object in @objects
                object.draw @ctx
            @screen.endDraw @ctx
        add: (object) ->
            @objects.push object
        prepare: () ->
            @screen = new Screen @canvas.width, @canvas.height

            left = new Pendulum 100, 250, -Math.PI / 4, 100, 1
            left.model.setStyle 'green'
            center = new Pendulum 300, 250, 0, 100, 1
            right = new Pendulum 500, 250, Math.PI / 4, 100, 1
            right.model.setStyle 'red'
            @add left
            @add center
            @add right


