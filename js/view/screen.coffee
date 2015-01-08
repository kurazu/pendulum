define ['view/base'], (BaseView) ->

    class ScreenView extends BaseView
        beginDraw: (ctx) ->
            ctx.save()
            ctx.translate 0, @model.height
            ctx.scale 1, -1

            ctx.clearRect 0, 0, @model.width, @model.height
        endDraw: (ctx) ->
            ctx.restore()
