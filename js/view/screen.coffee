define ['view/base'], (BaseView) ->

    class ScreenView extends BaseView
        draw: (ctx) ->
            ctx.clearRect 0, 0, @model.width, @model.height
