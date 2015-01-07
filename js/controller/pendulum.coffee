define ['controller/base', 'model/pendulum', 'model/point', 'view/pendulum'], (BaseController, PendulumModel, Point, PendulumView) ->

    class Pendulum extends BaseController
        model_class: PendulumModel
        view_class: PendulumView
        modelParameters: (anchor_x, anchor_y, length, weight) ->
            anchor = new Point anchor_x, anchor_y
            return [anchor, length, weight]
        act: (diff) ->

