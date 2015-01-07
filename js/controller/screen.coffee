define ['controller/base', 'model/screen', 'view/screen'], (BaseController, ScreenModel, ScreenView) ->

    class Screen extends BaseController
        model_class: ScreenModel
        view_class: ScreenView
