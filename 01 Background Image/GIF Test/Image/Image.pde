//Background Image Example
//
//Global Variables
int appWidth, appHeight;
float imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight;
PImage pic;
//
void setup() {
  size(500, 300); //Landscape
  //Copy Display Orientation
  appWidth = width;
  appHeight = height;
  //
  //Population
  pic = loadImage("giphy.gif");
  imageBackgroundX = appWidth*0;
  imageBackgroundY = appHeight*0;
  imageBackgroundWidth = appWidth-1;
  imageBackgroundHeight = appHeight-1;
  //
  //Rectangle Layout and Image drawing to CANVAS
  rect( imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight);
  //
}
void draw() {
  image( pic, imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight);
}
