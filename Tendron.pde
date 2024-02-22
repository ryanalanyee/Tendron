void setup() {
    size(500, 500);
    background(0); // Change background color to black
    noLoop();
}

void draw() { 
    background(0); // Clear canvas
    Cluster c = new Cluster(50, 250, 250); // initial number of segments in the tendril and starting (x,y) coordinate
}

void mousePressed() {
    redraw();
}
