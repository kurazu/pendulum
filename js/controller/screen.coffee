define ['controller/base', 'model/screen', 'view/screen'], (BaseController, ScreenModel, ScreenView) ->

    class Screen extends BaseController
        modelClass: ScreenModel
        viewClass: ScreenView
