//Global Variables
int appWidth, appHeight;
float smallerDimension, largerDimension;
Boolean widthLarger=false, heightLarger=false;
float imageWidthRatio=0.0, imageHeightRatio=0.0;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage pic;
Boolean nightMode=false;
//
void setup() {}//End setup
void draw() {}//End draw
void keyPressed() {}//End keyPressed
void mousePressed() {}//End mousePressed
//
size(1000, 800); //Landscape
//Copy Display Algorithm from Hello World
appWidth = width;
appHeight = height;
//
//Aspect Ratio Calculations
//Obi-wan-star-wars-jedi-23864621-800-600.jpg
//Note: Dimensions are found in the image file / Right Click / Properties / Details
int picWidth = 800; //Mine is 800, do not copy this!!!
int picHeight = 600; //Mine is 600, do not copy this!!!
//Image Orientation: Landscape, Portrait, Square
if ( picWidth >= picHeight ) { //True if Landscape or Square
  largerDimension = picWidth;
  smallerDimension = picHeight;
  widthLarger = true;
} else { //False if Portrait
  largerDimension = picHeight;
  smallerDimension = picWidth;
  heightLarger = true;
}
/* Older algorithm
 if ( widthLarger == true ) imageWidthRatio = largerDimension / largerDimension; //streches width into larger CANVAS
 if ( widthLarger == true ) imageHeightRatio = smallerDimension / largerDimension;
 if ( heightLarger == true ) imageWidthRatio = smallerDimension / largerDimension;
 if ( heightLarger == true ) imageHeightRatio = largerDimension / largerDimension; //streches height into larger CANVAS
 */
//Note: println() also verifies decimal places, compiler will truncate
//Answers must be 1.0 and between 0 & 1 (decimal)
//Ratio 1.0 similar to style="width:100%" (websites)
//Ratio "0.75" similar to style="height:auto" (websites)
float picWidthAdjusted=0.0, picHeightAdjusted=0.0;
//Better Image Stretch Algorithm
//We know the width is the larger dimension
if ( appWidth >= picWidth ) {
  picWidthAdjusted = appWidth;
  //
  if ( widthLarger == true ) imageWidthRatio = largerDimension / largerDimension;
  if ( heightLarger == true ) imageWidthRatio = smallerDimension / largerDimension;
  //
  if ( appHeight >= picHeightAdjusted ) {
    picHeightAdjusted = picHeight;
    if ( widthLarger == true ) imageHeightRatio = smallerDimension / largerDimension;
    if ( heightLarger == true ) imageHeightRatio = largerDimension / largerDimension;
  } else {
    //Image smaller than CANVAS needs separate algorithm
  }
} else {
  //Image smaller than CANVAS needs separate algorithm
}
//
println(appWidth, imageWidthRatio);
println(appHeight, imageHeightRatio);
picWidthAdjusted = appWidth * imageWidthRatio;
picHeightAdjusted = appWidth * imageHeightRatio;
//Developer verified variables
println (appWidth, picWidth, picWidthAdjusted);
println (appHeight, picHeight, picHeightAdjusted);
//
//Population
pic = loadImage("../../../Images Used/Landscape & Square Images/Obi-wan-star-wars-jedi-23864621-800-600.jpg");
backgroundImageX = appWidth*0;
backgroundImageY = appHeight*0;
backgroundImageWidth = appWidth-1;
backgroundImageHeight = appHeight-1;
//
//Rectangular Layout and Image Drawing to CANVAS
//rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
//
//if () {} else {} for a Binaary Choice, no single IF
if (nightMode == false) tint(255, 128); //Gray Scale: use 1/2 tint value for white (i.e. 128/256=1/2)
if (nightMode == true) tint(64, 64, 40); //RGB: Night Mode
//
//image( pic, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
image( pic, backgroundImageX, backgroundImageY, picWidthAdjusted, picHeightAdjusted);