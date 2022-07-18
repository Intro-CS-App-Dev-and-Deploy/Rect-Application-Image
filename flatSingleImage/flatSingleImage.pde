/*Note: better aspect ratio algorithms exist ...
 can you figure one out?
 */
//
//Global Variables
float imageX, imageY, imageWidth, imageHeight, imageWidthRatio=0.0, imageHeightRatio=0.0;
float largerDimension, smallerDimension;
PImage pic;
Boolean widthLarger=false, heightLarger=false;
//
//Geometry: display and orientation (landscape, portrait, and square)
size(1000, 800); //fullScreen; displayWidth, displayHeight
//
//Population
pic = loadImage("../Images Used/Landscape & Square Images/Obi-wan-star-wars-jedi-23864621-800-600.jpg"); //Dimesions: width 800, height 600
//Note: Dimensions are found in the image file / Right Click / Properties / Details
//Alogrithm: Find the larger dimension for aspect ration (comparison of two numbers)
int picWidth = 800; //Mine is 800, do not copy this!!!
int picHeight = 600; //Mine is 600, do not copy this!!!
if ( picWidth >= picHeight ) { //True, if Landscape or Square
  largerDimension = picWidth;
  smallerDimension = picHeight;
  widthLarger = true;
} else { //False, if Portrait
  largerDimension = picHeight;
  smallerDimension = picWidth;
  heightLarger = true;
}//End Dimension Comparision
println(smallerDimension, largerDimension, widthLarger, heightLarger); //Verifying Variable details
//
//Aspect Ratio Calculations
//Note: single line IFs can be summarized to IF-ELSE or IF-ELSEIF-ELSE
//Computer chooses which formulae to execute
if ( widthLarger == true ) imageWidthRatio = largerDimension / largerDimension;
if ( widthLarger == true ) imageHeightRatio = smallerDimension / largerDimension;
if ( heightLarger == true ) imageHeightRatio = largerDimension / largerDimension;
if ( heightLarger == true ) imageWidthRatio = smallerDimension / largerDimension;
println(imageWidthRatio, imageHeightRatio, smallerDimension/largerDimension, 600.0/800.0); //Verify variable values
//Note: println() also verifies decimal places, compiler will truncate
//Answers must be 1.0 and between 0 & 1 (decimal)
//Ratio 1.0 similar to style="width:100%" (websites)
//Ratio "0.75" similar to style="height:auto" (websites)
imageX = width*0;
imageY = height*0;
imageWidth = width-1; //CANVAS (0,0) means point doesn't match to rectangle, missing outline on two sides
imageHeight = height-1;
//
//Adjusted Image Variables for Aspect Ratio
float picWidthAdjusted, picHeightAdjusted;
picWidthAdjusted = float (width) * imageWidthRatio;
picHeightAdjusted = float (height) * imageHeightRatio;
println(picWidth, imageWidthRatio, width, picWidthAdjusted, picHeight, imageHeightRatio, height, picHeightAdjusted);
if ( imageWidth > width ) println("ERROR: Image is too wide"); //Simple Display Checker
if ( imageHeight > height ) println("ERROR: Image is too high"); //Simple Display Checker
//
//Rectangle Layout and Image Drawing to Canvas
rect(imageX, imageY, imageWidth, imageHeight); //Background image
//image(pic, imageX, imageY, imageWidth, imageHeight);
image(pic, imageX, imageY, picWidthAdjusted, picHeightAdjusted);
//
//End Program
