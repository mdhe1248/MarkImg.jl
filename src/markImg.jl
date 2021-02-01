"""
Mark a coordinate. 
img is should be RBG format. If not, try `colorImg = convert.(RGB, img)`
It will mark a given x and y position with a red dot.
change red dot size with 'r'.
"""
function markImg!(img, y0, x0, r)
  x1 = max(x0 - r, 1)
  y1 = max(y0 - r, 1)
  x2 = min(x0 + r, size(img, 1))
  y2 = min(y0 + r, size(img, 2))
  for x in x1:x2
    for y in y1:y2
      if r^2 > (x0 - x)^2 + (y0 - y)^2
        img[x, y] = typeof(img[1])(1, 0, 0)
      end
    end
  end
  img
end    

function markImg!(img, y0, x0, z, r) # Maybe mapped array can be used
  x1 = max(x0 - r, 1)
  y1 = max(y0 - r, 1)
  x2 = min(x0 + r, size(img, 1))
  y2 = min(y0 + r, size(img, 2))
  for x in x1:x2
    for y in y1:y2
      if r^2 > (x0 - x)^2 + (y0 - y)^2
        img[x, y, z] = typeof(img[1])(1, 0, 0)
      end
    end
  end
  img
end    

function markImg!(img, pos::AbstractVector, rad)
for i	 in 1:length(pos)
markImg!(img, pos[i].location[2], pos[i].location[1	], pos[i].location[3], rad)
  end
end

