function refrechData()
    gpu.set(8,2, ""..debugnumber.."")
    debugnumber = debugnumber + 1
    if (debugnumber == 9) then
        debugnumber = 0
    end
end

function refrechScreen()
    gpu.set(9,2, ""..debugnumber2.."")
    debugnumber2 = debugnumber2 + 1
    if (debugnumber2 == 9) then
        debugnumber2 = 0
    end
end

function onTouch(_, _, x, y)
    if x>20 and x<59 and y==2 then
        running = nill
    end
  end