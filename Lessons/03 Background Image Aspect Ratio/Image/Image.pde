//To Do, add the printlns to verify the values
//Algorithm works when image is bigger than the CANVAS, not smaller
//Different Algorithm is necessary - work to get above 65%
//Larger Dimension needs to be compared to same CANVAS Dimension
//If same or larger, ok, if smaller, note that algorithm will not work
//Calculated smaller dimension must be equal to or smaller as well
//Larger calculated dimension will not show everything
//
/*Note: better aspect ratio algorithms exist ...
 can you figure out how to check images smaller and larger than the CANVAS
 */
//
//Global Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
float smallerDimension, largerDimension, imageWidthRatio=0.0, imageHeightRatio=0.0;
Boolean widthLarger=false, heightLarger=false;
PImage pic;
Boolean nightMode=false;
//
size(800, 600); //Landscape
//Copy Display Algorithm from Hello World
appWidth = width;
appHeight = height;
//
//Aspect Ratio of Background Image
//Obi-wan-star-wars-jedi-23864621-800-600.jpg, note the size in the fileName
//Note: Dimensions are found in the image file / Right Click / Properties / Details
int picWidth = 800; //Mr. Mercer's is 800, do not copy this unless using the same image
int picHeight = 600; //Mr. Mercer's is  800, do not copy this unless using the same image
//Image Orientation: Landscape, Square, Portrait
//Compare the dimension to see which is larger
if ( picWidth >= picHeight ) { //True if Landscape or Square
  largerDimension = picWidth;
  smallerDimension = picHeight;
  widthLarger = true;
} else { //False if Portrait
  largerDimension = picHeight;
  smallerDimension = picWidth;
  heightLarger = true;
}//End Image Dimension Comparision
//
//Aspect Ratio Calculations
//Note: single line IFs can be summarized to IF-ELSE or IF-ELSEIF-ELSE
//Computer chooses which formulae to execute
if ( widthLarger == true ) imageWidthRatio = largerDimension / largerDimension;
if ( widthLarger == true ) imageHeightRatio = smallerDimension / largerDimension;
if ( heightLarger == true ) imageWidthRatio = smallerDimension / largerDimension;
if ( heightLarger == true ) imageHeightRatio = largerDimension / largerDimension;
//Note: println() also verifies decimal places, compiler will truncate
//Answers must be 1.0 and between 0 & 1 (decimal)
//Ratio 1.0 similar to style="width:100%" (websites)
//Ratio "0.75" similar to style="height:auto" (websites)
//Population
pic = loadImage("../Images Used/Obi-wan-star-wars-jedi-23864621-800-600.jpg");
backgroundImageX = appWidth*0;
backgroundImageY = appHeight*0;
backgroundImageWidth = appWidth-1;
backgroundImageHeight = appHeight-1;
//
// Adjust Iamge Varaibles for Asepct Ratio
float picWidthAdjusted, picHeightAdjusted;
picWidthAdjusted = backgroundImageWidth * imageWidthRatio;
picHeightAdjusted = backgroundImageHeight * imageHeightRatio;
//Rectangular Layout and Image Drawing to CANVAS
//rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
//
if ( nightMode == false ) tint(255, 64); //Gray Scale, Day use: use 1/2 tint value for white (i.e. 128/256=1/2)
if ( nightMode == true ) tint(64, 64, 40); //RGB: Night Mode
image( pic, backgroundImageX, backgroundImageY, picWidthAdjusted, picHeightAdjusted);
//End Main Program
