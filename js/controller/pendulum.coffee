define ['controller/base', 'model/pendulum', 'model/point', 'view/pendulum', 'model/vector', 'model/weight'], (BaseController, PendulumModel, Point, PendulumView, Vector, Weight) ->

    GRAVITY_ACCELERATION = new Vector -Math.PI / 2, 9 * 100

    class Pendulum extends BaseController
        modelClass: PendulumModel
        viewClass: PendulumView
        modelParameters: (anchor_x, anchor_y, angle, length, mass, frictionFactor) ->
            anchor = new Point anchor_x, anchor_y
            angle -= Math.PI / 2
            vector = new Vector angle, length
            weight = new Weight mass, frictionFactor
            return [anchor, vector, weight]
        act: (diff) ->
            seconds = diff / 1000
            gravity_accelerations = GRAVITY_ACCELERATION.decomposeAlong @model.vector
            side_acceleration = gravity_accelerations.perpendicular

            velocity_change = side_acceleration.length * seconds

            @model.weight.velocity += velocity_change

            #@model.weight.velocity = Math.sign(@model.weight.velocity) * Math.sqrt((1 - FRICTION_PER_SECOND) * @model.weight.velocity * @model.weight.velocity)
            @model.weight.velocity *= 1 - seconds * @model.weight.frictionFactor

            angle_change = @model.weight.velocity * seconds / @model.vector.length
            @model.vector.angle += angle_change
