-- Init
running = true -- Main Boucle ON
local event = require ("event")
term = require("term")
component = require("component")
colors = require("colors")
require("screen")
require("function")
refrechnumber = 0
debugnumer = 0
--Component
gpu = component.gpu
screen = component.screen.adress
--Résolution
gpu.setResolution(160,50)
baseScreen()
gpu.set(69,2,"Alpha 0.0")
gpu.set(14,4,"   OFFLINE    ")
gpu.set(44,4," OFFLINE ")



while (running) do
    local eventID, arg1, arg2, arg3, arg4, arg5 = event.pull()
    if (eventID == "touch") then -- handle touch event here
        event.listen("touch", onTouch)
    elseif (eventID == "key_down") then -- handle key events
        if (arg3 == 16) then -- "Q" key
            running = nill
        end
    end
    refrech() -- Refresh speed check.
end