function love.load()

    love.window.setMode(320, 320)
    math.randomseed(os.time())
    
    sprites = {}
    sprites.wall = love.graphics.newImage('sprites/wall64x64.png')
    sprites.tile1 = love.graphics.newImage('sprites/decortile_1.png')
    sprites.tile2 = love.graphics.newImage('sprites/decortile_2.png')
    sprites.tile3 = love.graphics.newImage('sprites/decortile_3.png')
    sprites.tile4 = love.graphics.newImage('sprites/decortile_4.png')
    sprites.tile5 = love.graphics.newImage('sprites/decortile_5.png')
    sprites.tile6 = love.graphics.newImage('sprites/decortile_6.png')
    sprites.tile7 = love.graphics.newImage('sprites/decortile_7.png')
    sprites.tile8 = love.graphics.newImage('sprites/decortile_8.png')

    tile1 = {x = 0, y = 0}
    tile2 = {x = 0, y = 0}
    tile3 = {x = 0, y = 0}
    tile4 = {x = 0, y = 0}
    tile5 = {x = 0, y = 0}
    tile6 = {x = 0, y = 0}
    tile7 = {x = 0, y = 0}
    tile8 = {x = 0, y = 0}
    tile9 = {x = 0, y = 0}
    tiles = {tile1, tile2, tile3, tile4, tile5, tile6, tile7, tile8, tile9}
    tempTile = {x = 0, y = 0}
    p1 = {x = 64, y = 64}
    p2 = {x = 128, y = 64}
    p3 = {x = 192, y = 64}
    p4 = {x = 64, y = 128}
    p5 = {x = 128, y = 128}
    p6 = {x = 192, y = 128}
    p7 = {x = 64, y = 192}
    p8 = {x = 128, y = 192}
    p9 = {x = 192, y = 192}
    closestTile = 0

    tilePosition = {1, 2, 3, 4, 5, 6, 7, 8, 9}
    for i=#tilePosition, 2, -1 do
        local j = math.random(i)
        tilePosition[i], tilePosition[j] = tilePosition[j], tilePosition[i]
    end

    if tilePosition[1] == 1 then
        tile1.x, tile1.y = p1.x, p1.y
    elseif tilePosition[1] == 2 then
        tile2.x, tile2.y = p1.x, p1.y
    elseif tilePosition[1] == 3 then
        tile3.x, tile3.y = p1.x, p1.y
    elseif tilePosition[1] == 4 then
        tile4.x, tile4.y = p1.x, p1.y
    elseif tilePosition[1] == 5 then
        tile5.x, tile5.y = p1.x, p1.y
    elseif tilePosition[1] == 6 then
        tile6.x, tile6.y = p1.x, p1.y
    elseif tilePosition[1] == 7 then
        tile7.x, tile7.y = p1.x, p1.y
    elseif tilePosition[1] == 8 then
        tile8.x, tile8.y = p1.x, p1.y
    else
        tile9.x, tile9.y = p1.x, p1.y
    end
    if tilePosition[2] == 1 then
        tile1.x, tile1.y = p2.x, p2.y
    elseif tilePosition[2] == 2 then
        tile2.x, tile2.y = p2.x, p2.y
    elseif tilePosition[2] == 3 then
        tile3.x, tile3.y = p2.x, p2.y
    elseif tilePosition[2] == 4 then
        tile4.x, tile4.y = p2.x, p2.y
    elseif tilePosition[2] == 5 then
        tile5.x, tile5.y = p2.x, p2.y
    elseif tilePosition[2] == 6 then
        tile6.x, tile6.y = p2.x, p2.y
    elseif tilePosition[2] == 7 then
        tile7.x, tile7.y = p2.x, p2.y
    elseif tilePosition[2] == 8 then
        tile8.x, tile8.y = p2.x, p2.y
    else
        tile9.x, tile9.y = p2.x, p2.y
    end
    if tilePosition[3] == 1 then
        tile1.x, tile1.y = p3.x, p3.y
    elseif tilePosition[3] == 2 then
        tile2.x, tile2.y = p3.x, p3.y
    elseif tilePosition[3] == 3 then
        tile3.x, tile3.y = p3.x, p3.y
    elseif tilePosition[3] == 4 then
        tile4.x, tile4.y = p3.x, p3.y
    elseif tilePosition[3] == 5 then
        tile5.x, tile5.y = p3.x, p3.y
    elseif tilePosition[3] == 6 then
        tile6.x, tile6.y = p3.x, p3.y
    elseif tilePosition[3] == 7 then
        tile7.x, tile7.y = p3.x, p3.y
    elseif tilePosition[3] == 8 then
        tile8.x, tile8.y = p3.x, p3.y
    else
        tile9.x, tile9.y = p3.x, p3.y
    end
    if tilePosition[4] == 1 then
        tile1.x, tile1.y = p4.x, p4.y
    elseif tilePosition[4] == 2 then
        tile2.x, tile2.y = p4.x, p4.y
    elseif tilePosition[4] == 3 then
        tile3.x, tile3.y = p4.x, p4.y
    elseif tilePosition[4] == 4 then
        tile4.x, tile4.y = p4.x, p4.y
    elseif tilePosition[4] == 5 then
        tile5.x, tile5.y = p4.x, p4.y
    elseif tilePosition[4] == 6 then
        tile6.x, tile6.y = p4.x, p4.y
    elseif tilePosition[4] == 7 then
        tile7.x, tile7.y = p4.x, p4.y
    elseif tilePosition[4] == 8 then
        tile8.x, tile8.y = p4.x, p4.y
    else
        tile9.x, tile9.y = p4.x, p4.y
    end
    if tilePosition[5] == 1 then
        tile1.x, tile1.y = p5.x, p5.y
    elseif tilePosition[5] == 2 then
        tile2.x, tile2.y = p5.x, p5.y
    elseif tilePosition[5] == 3 then
        tile3.x, tile3.y = p5.x, p5.y
    elseif tilePosition[5] == 4 then
        tile4.x, tile4.y = p5.x, p5.y
    elseif tilePosition[5] == 5 then
        tile5.x, tile5.y = p5.x, p5.y
    elseif tilePosition[5] == 6 then
        tile6.x, tile6.y = p5.x, p5.y
    elseif tilePosition[5] == 7 then
        tile7.x, tile7.y = p5.x, p5.y
    elseif tilePosition[5] == 8 then
        tile8.x, tile8.y = p5.x, p5.y
    else
        tile9.x, tile9.y = p5.x, p5.y
    end
    if tilePosition[6] == 1 then
        tile1.x, tile1.y = p6.x, p6.y
    elseif tilePosition[6] == 2 then
        tile2.x, tile2.y = p6.x, p6.y
    elseif tilePosition[6] == 3 then
        tile3.x, tile3.y = p6.x, p6.y
    elseif tilePosition[6] == 4 then
        tile4.x, tile4.y = p6.x, p6.y
    elseif tilePosition[6] == 5 then
        tile5.x, tile5.y = p6.x, p6.y
    elseif tilePosition[6] == 6 then
        tile6.x, tile6.y = p6.x, p6.y
    elseif tilePosition[6] == 7 then
        tile7.x, tile7.y = p6.x, p6.y
    elseif tilePosition[6] == 8 then
        tile8.x, tile8.y = p6.x, p6.y
    else
        tile9.x, tile9.y = p6.x, p6.y
    end
    if tilePosition[7] == 1 then
        tile1.x, tile1.y = p7.x, p7.y
    elseif tilePosition[7] == 2 then
        tile2.x, tile2.y = p7.x, p7.y
    elseif tilePosition[7] == 3 then
        tile3.x, tile3.y = p7.x, p7.y
    elseif tilePosition[7] == 4 then
        tile4.x, tile4.y = p7.x, p7.y
    elseif tilePosition[7] == 5 then
        tile5.x, tile5.y = p7.x, p7.y
    elseif tilePosition[7] == 6 then
        tile6.x, tile6.y = p7.x, p7.y
    elseif tilePosition[7] == 7 then
        tile7.x, tile7.y = p7.x, p7.y
    elseif tilePosition[7] == 8 then
        tile8.x, tile8.y = p7.x, p7.y
    else
        tile9.x, tile9.y = p7.x, p7.y
    end
    if tilePosition[8] == 1 then
        tile1.x, tile1.y = p8.x, p8.y
    elseif tilePosition[8] == 2 then
        tile2.x, tile2.y = p8.x, p8.y
    elseif tilePosition[8] == 3 then
        tile3.x, tile3.y = p8.x, p8.y
    elseif tilePosition[8] == 4 then
        tile4.x, tile4.y = p8.x, p8.y
    elseif tilePosition[8] == 5 then
        tile5.x, tile5.y = p8.x, p8.y
    elseif tilePosition[8] == 6 then
        tile6.x, tile6.y = p8.x, p8.y
    elseif tilePosition[8] == 7 then
        tile7.x, tile7.y = p8.x, p8.y
    elseif tilePosition[8] == 8 then
        tile8.x, tile8.y = p8.x, p8.y
    else
        tile9.x, tile9.y = p8.x, p8.y
    end
    if tilePosition[9] == 1 then
        tile1.x, tile1.y = p9.x, p9.y
    elseif tilePosition[9] == 2 then
        tile2.x, tile2.y = p9.x, p9.y
    elseif tilePosition[9] == 3 then
        tile3.x, tile3.y = p9.x, p9.y
    elseif tilePosition[9] == 4 then
        tile4.x, tile4.y = p9.x, p9.y
    elseif tilePosition[9] == 5 then
        tile5.x, tile5.y = p9.x, p9.y
    elseif tilePosition[9] == 6 then
        tile6.x, tile6.y = p9.x, p9.y
    elseif tilePosition[9] == 7 then
        tile7.x, tile7.y = p9.x, p9.y
    elseif tilePosition[9] == 8 then
        tile8.x, tile8.y = p9.x, p9.y
    else
        tile9.x, tile9.y = p9.x, p9.y
    end

end

function love.update(dt)

end

function love.draw()

    -- Draw the wall boarder
    for i=0, 4, 1 do
        if i == 0 or i == 4 then
            for j=0, 4, 1 do
                love.graphics.draw(sprites.wall, j * 64, i * 64)
            end
        else
            for j=0, 4, 4 do
                love.graphics.draw(sprites.wall, j * 64, i * 64)
            end
        end
    end

    love.graphics.draw(sprites.tile1, tile1.x, tile1.y)
    love.graphics.draw(sprites.tile2, tile2.x, tile2.y)
    love.graphics.draw(sprites.tile3, tile3.x, tile3.y)
    love.graphics.draw(sprites.tile4, tile4.x, tile4.y)
    love.graphics.draw(sprites.tile5, tile5.x, tile5.y)
    love.graphics.draw(sprites.tile6, tile6.x, tile6.y)
    love.graphics.draw(sprites.tile7, tile7.x, tile7.y)
    love.graphics.draw(sprites.tile8, tile8.x, tile8.y)

    --love.graphics.print(closestTile, 5, 5)

end

--function to find the selected tile and move it to an open, adjacent space
function love.mousepressed(x, y, button)
    if button == 1 then
        local minDistance = 192
        for i=8, 1, -1 do
            local db = 192
            db = distanceBetween(tiles[i].x + 32, tiles[i].y + 32, x, y)
            if  db < minDistance then
                minDistance = db
                closestTile = i
            end
        end
        if distanceBetween(tiles[closestTile].x, tiles[closestTile].y, tile9.x, tile9.y) == 64 then
            tempTile.x, tempTile.y = tiles[closestTile].x, tiles[closestTile].y
            tiles[closestTile].x, tiles[closestTile].y = tile9.x, tile9.y
            tile9.x, tile9.y = tempTile.x, tempTile.y
        end
    end
end

function distanceBetween(x1, y1, x2, y2)
    return math.sqrt((x2-x1)^2 + (y2-y1)^2)
end
