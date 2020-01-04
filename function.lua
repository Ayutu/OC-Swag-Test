function refrech()
    gpu.set(2,2, "Refrech : "..refrechnumber.."")
    refrechnumber = refrechnumber + 1
    if (refrechnumber == 9) then
        refrechnumber = 0
    end
end

function onTouch(_, _, x, y)
    if x>20 and x<59 and y==2 then
        running = nill
    end
  end