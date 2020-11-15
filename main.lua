-- Init
running = true -- Main Boucle ON
local event = require ("event")
term = require("term")
component = require("component")
colors = require("colors")
local thread = require("thread")
require("screen")
require("function")
debugnumber = 0
debugnumber2 = 0
--Component
gpu = component.gpu
screen = component.screen.adress
--Résolution
gpu.setResolution(160,50)
baseScreen()
gpu.set(69,2,"Alpha 0.0")
gpu.set(14,4,"   OFFLINE    ")
gpu.set(44,4," OFFLINE ")


local threadData = thread.create(function()
    while (running) do
        refrechData()
        os.sleep(0.5)
    end
end)

local threadScreen = thread.create(function()
    while (running) do
        refrechScreen()
        os.sleep(2)
    end
end)

while (running) do
    local eventID, arg1, arg2, arg3, arg4, arg5 = event.pull()
    if (eventID == "touch") then -- handle touch event here
        event.listen("touch", onTouch)
    elseif (eventID == "key_down") then -- handle key events
        if (arg3 == 16) then -- "Q" key
            running = nill
        end
    end
end

threadData:kill()
threadScreen:kill()
