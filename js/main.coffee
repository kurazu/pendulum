require ['controller/game'], (Game) ->
    screen = document.getElementById 'screen'
    game = new Game screen
    game.start()

require ['model/point', 'model/vector'], (Point, Vector) ->
    p = new Point 0, 0
    v = new Vector 0 - Math.PI / 2, 1
    r = p.addVector v
    console.log p, '+', v, '=', r
