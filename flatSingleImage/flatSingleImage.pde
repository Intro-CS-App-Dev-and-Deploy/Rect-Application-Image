//Variables
PImage pic;
float imageStartWidth, imageStartHeight, imageWidth, imageHeight;
float imageWidthRatio, imageHeightRatio;
int largerDimension;;
//
//Geometry
size(600, 300); //fullScreen(), displayWidth & displayHeight //Square, Landscape, or Portrait
//
//Variable Population
pic = loadImage("Obi-wan-star-wars-jedi-23864621-800-600.jpg"); //Dimension: 800 Width, 600 Height
// See Sandbox
// Similar to if ( width >= height ) { largerDimension = width; smallerDimension = height; } else { largerDimension = height; smallerDimension = width; }
imageWidthRatio = float ( largerDimension / largerDimension ) ; //must be decmals due to float, larger # for aspect ratio, similar to style="width:100%"
imageHeightRatio = float ( smallerDimension / largerDimension ); //must be decmals due to float, <1 for aspect ratio, similar to style="height:auto"
imageStartWidth = width*0;
imageStartHeight = height*0;
imageWidth = width*imageWidthRatio; //Aspect Ratio
imageHeight = width*imageHeightRatio; //Aspect Ratio
//Basic Error: Image must be smaller than the Canvas or Display
if ( imageWidth > width ) println("ERROR: Image is too wide");
if (imageHeight > height) println("Image display issues");
//
//Rectangle Layout
//rect(imageStartWidth, imageStartHeight, imageWidth, imageHeight); //Presentation is landscape
//
//Printing Image to Screen
image(pic, imageStartWidth, imageStartHeight, imageWidth, imageHeight);
