import graph;

size(14cm);

real fa(real x) { return x**2 - 2; }
real fb(real x) { return x**2 - 1; }
real fc(real x) { return x**2; }
real fd(real x) { return x**2 + 1; }
real fe(real x) { return x**2 + 2; }

// Set up the range of the plot
real xmin = -3, xmax = 7;
real ymin = -2, ymax = 2;

xaxis("$x$", xmin, xmax, Ticks(Label(fontsize(8pt)), Step=1, begin=false, end=false), Arrows);
yaxis("$y$", ymin, ymax, Ticks(Label(fontsize(8pt)), Step=1, begin=false, end=false), Arrows);

transform t = reflect((0,0), (1,1));
draw(t*graph(fa, ymin, ymax, operator ..), red, "$c = -2$", align=W);
draw(t*graph(fb, ymin, ymax, operator ..), orange, "$c = -1$", align=W);
draw(t*graph(fc, ymin, ymax, operator ..), deepgreen, "$c = 0$", align=W);
draw(t*graph(fd, ymin, ymax, operator ..), blue, "$c = 1$", align=W);
draw(t*graph(fe, ymin, ymax, operator ..), purple, "$c = 2$", align=W);

add(legend(),point(E),(20,0),UnFill);
