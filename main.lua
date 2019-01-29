io.stdout:setvbuf('no') 

-- Load some default values for our rectangle.
function love.load()
    WIN_W = 400
    WIN_H = 400 
    x, y, w, h = 0, WIN_H-20, 20, 20
    love.window.setTitle("skyrim") -- Change le titre de la fenêtre
    love.window.setMode(WIN_W, WIN_H) -- Change les dimensions de la fenêtre
    
end


-- Increase the size of the rectangle every frame.
function love.update(dt)
    love.keypressed(dt) -- pour ne pas saccader
end
 
-- Draw a coloured rectangle.
function love.draw()
    love.graphics.setColor(0, 0.4, 0.4)
    love.graphics.rectangle("fill", x, y, w, h)
end

function love.keypressed(key)
  -- Fonction pour gérer l'appui sur les touches (appelée pour chaque touche pressée)  
  if love.keyboard.isDown('down') and y < WIN_H - 20 then
    y = y+2
  elseif love.keyboard.isDown('up') and y > 0 then
    y = y-2
  elseif love.keyboard.isDown('right') and x < WIN_W - 20 then
    x = x + 2
  elseif love.keyboard.isDown('left') and x > 0 then
    x = x - 2
  end
end