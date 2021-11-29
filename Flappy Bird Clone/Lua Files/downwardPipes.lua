-- downwardPipes.lua

downwardPipes = Class{}

function downwardPipes:init(x, y)
  self.x = x
  self.y = y
  self.width = pipeDown:getWidth()
  self.height = pipeDown:getHeight()
  self.speed = 70
end

function downwardPipes:update(dt)
  self.x = self.x - self.speed * dt
end

function downwardPipes:render()
  love.graphics.draw(pipeDown, self.x, self.y)
  love.graphics.setColor(1, 1, 1)
end
