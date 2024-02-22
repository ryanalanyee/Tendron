public class Tendril {
    public final static int SEG_LENGTH = 3; // length of each segment in the tendril
    private int myNumSegments, myX, myY;
    color pigment;
    private double myAngle;
 
    /* Class constructor
       len is how many segments in this tendril (each a fixed length, 4 is a good start)
       theta is tendril starting angle in radians
       x, y  is the starting (x,y) coordinate
     */
    public Tendril(int len, double theta, int x, int y, color lineColor) {
        myAngle = theta;
        myX = x;
        myY = y;
        myNumSegments = len;
        pigment = lineColor;
    }

    public void show() {
        int startX = myX;
        int startY = myY;
        stroke(pigment);
        for (int i = 0; i < myNumSegments; i++) {
            myAngle += Math.random() * 0.4 - 0.2;
            int endX = startX + (int)(Math.cos(myAngle) * SEG_LENGTH);
            int endY = startY + (int)(Math.sin(myAngle) * SEG_LENGTH);
            line(startX, startY, endX, endY);
            startX = endX;
            startY = endY;
        }
        if (myNumSegments < 6) {
            return;
        } else {
            new Cluster(myNumSegments/3, startX, startY);
        }
    }
}
