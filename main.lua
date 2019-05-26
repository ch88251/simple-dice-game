cw = 777
ch = 472

human = {}
comp = {}

function love.load()
  love.window.setMode(cw, ch, {resizable=false, vsync=false})
  love.window.setTitle("Dice Game")
  love.graphics.setBackgroundColor(0,0,0)
  math.randomseed(os.time())
  human.name = "You"
  comp.name = "Computer"
  human.img = love.graphics.newImage('img/die-1.png')
  comp.img = love.graphics.newImage('img/die-1.png')
  font = love.graphics.setNewFont("fonts/orbitron-bold-webfont.ttf", 72)
  start = true
end

function love.draw()
  love.graphics.setColor(255, 255, 255)

  if start == false then

  end

  love.graphics.draw(human.img, 33, 30, 0, 0.2, 0.2)
  love.graphics.draw(comp.img, cw*0.5, 30, 0, 0.2, 0.2)

  if human.win then
    love.graphics.setColor(0, 204, 0)
    love.graphics.printf("Player wins!", 0, ch-76, cw, 'center')
    love.graphics.setColor(0, 0, 0)
  else
    love.graphics.setColor(255, 0, 0)
    love.graphics.printf("Computer wins!", 0, ch-76, cw, 'center')
    love.graphics.setColor(0, 0, 0)
  end

end

function love.mousereleased()
  start = false
  comp.roll = math.random(1, 6)
  human.roll = math.random(1, 6)
  human.img = love.graphics.newImage('img/die-'..human.roll..'.png')
  comp.img = love.graphics.newImage('img/die-'..comp.roll..'.png')

  if human.roll > comp.roll then
    human.win = true
  else
    human.win = false
  end

end

