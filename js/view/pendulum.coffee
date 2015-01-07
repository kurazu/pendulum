define ['view/base'], (BaseView) ->

    class PendulumView extends BaseView
        anchor_radius: 2
        draw: (ctx) ->
            anchor_x = @model.anchor.x
            anchor_y = @model.anchor.y

            pendulum_x = anchor_x
            pendulum_y = anchor_y + @model.length
            pendulum_radius = 10

            ctx.beginPath()
            ctx.arc anchor_x, anchor_y, @anchor_radius, 0, Math.PI * 2, false
            ctx.fill()

            ctx.beginPath()
            ctx.moveTo anchor_x, anchor_y
            ctx.lineTo pendulum_x, pendulum_y
            ctx.stroke()

            ctx.beginPath()
            ctx.arc pendulum_x, pendulum_y, pendulum_radius, 0, Math.PI * 2, false
            ctx.fill()
