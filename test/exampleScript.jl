using MarkImg

img = rand(100, 100)
imgc = convert.(RGB, img)
x, y, r = 10, 15, 5 #row, column, radius
markImg!(imgc, x, y, r)
