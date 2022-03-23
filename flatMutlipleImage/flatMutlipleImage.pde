/*Algorithms: based on Fraction Flags  Math Project
 Aspect Ratios: based on DIV II Math
 Laying out Rectangels: using fractions to know about different coordinates (abstract since geometry based)
 Using Booleans to do Combinations of Aspect Ratio Calculatios, similar to Truth Tables
 Variables from rectangles to iamges
 */
//
//Variables
float rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1;
float rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2;
PImage pic1, pic2;
//
//Geometry
size(900, 680); //fullScreen(); displayWidth, displayHeight
//Landsacpe Presentation, not square or portrait
//
//Populating Variables
pic1 = loadImage("../Images Used/Landscape & Square Images/Obi-wan-star-wars-jedi-23864621-800-600.jpg"); //Dimensions: 800 width, 600 height
pic2 = loadImage("../Images Used/Landscape & Square Images/bike.jpg"); //Dimensions: 860 width, 529 height
//
//Aspect Ration Calculations
int pic1Width = 800; //NOTE: mine not yours
int pic1Height = 600; //NOTE: mine not yours
int pic2Width = 860; //NOTE: mine not yours
int pic2Height = 529; //NOTE: mine not yours
int largerDimensionPic1, smallerDimensionPic1, largerDimensionPic2, smallerDimensionPic2;
float imageWidthRatioPic1=0.0, imageHeightRatioPic1=0.0, imageWidthRatioPic2=0.0, imageHeightRatioPic2=0.0; //Populated behind IF, must initialize with zero-decimals
Boolean widthLargerPic1=false, heightLargerPic1=false, widthLargerPic2=false, heightLargerPic2=false;
//
if ( pic1Width >= pic1Height ) { //ID Larger Dimension: Landscape and Square
  largerDimensionPic1 = pic1Width;
  smallerDimensionPic1 = pic1Height;
  widthLargerPic1 = true;
} else { //ID Larger Dimension: Portrait
  largerDimensionPic1 = pic1Height;
  smallerDimensionPic1 = pic1Width;
  heightLargerPic1 = true;
} //End pic1 larger dimension ID
//
if ( pic2Width >= pic2Height ) { //ID Larger Dimension: Landscape and Square
  largerDimensionPic2 = pic2Width;
  smallerDimensionPic2 = pic2Height;
  widthLargerPic2 = true;
} else { //ID Larger Dimension: Portrait
  largerDimensionPic2 = pic2Height;
  smallerDimensionPic2 = pic2Width;
  heightLargerPic2 = true;
} //End pic2 larger dimension ID
println (smallerDimensionPic1, largerDimensionPic1, smallerDimensionPic2, largerDimensionPic2); //Verifying Variable Details (ID Larger Dimension)
// Note: single line IFs can be summarized to IF-ELSE or IF-ELSEIF-ELSE
if ( widthLargerPic1 == true ) imageWidthRatioPic1 = float ( largerDimensionPic1 ) / float(largerDimensionPic1); //Contrast White Space for Human Reading
if ( widthLargerPic1 == true ) imageHeightRatioPic1 = float ( smallerDimensionPic1 ) / float (largerDimensionPic1);
if ( heightLargerPic1 == true ) imageWidthRatioPic1 = float (smallerDimensionPic1) / float (largerDimensionPic1);
if ( heightLargerPic1 == true ) imageHeightRatioPic1 = float (largerDimensionPic1) / float (largerDimensionPic1);
if ( widthLargerPic2 == true ) imageWidthRatioPic2 = float ( largerDimensionPic2 ) / float(largerDimensionPic2);
if ( widthLargerPic2 == true ) imageHeightRatioPic2 = float ( smallerDimensionPic2 ) / float (largerDimensionPic2);
if ( heightLargerPic2 == true ) imageWidthRatioPic2 = float (smallerDimensionPic2) / float (largerDimensionPic2);
if ( heightLargerPic2 == true ) imageHeightRatioPic2 = float (largerDimensionPic2) / float (largerDimensionPic2);
println(imageWidthRatioPic1, imageHeightRatioPic1, imageWidthRatioPic2, imageHeightRatioPic2); //Verifying Variable Details (Ratios)
//
// Use ratios to change the image width and height properties of Rectangle
// **See below to Specific Image Properties of Image and Rectangle Variables
//
rectXPic1 = width*1/4; //Combined with rectWidth, rect() is centered on page
rectYPic1 = height*0; //Directly centers the rect() on the page, top half
rectWidthPic1 = width*1/2;
rectHeightPic1 = height*1/2;
rectXPic2 = width*1/8; //Same as pic1 but with a different fraction
rectYPic2 = height*1/2; //Same as above, bottom half
rectWidthPic2 = width*6/8; // 1/8 leftover (or 7/8 used), or *3/4 (similar fraction)
rectHeightPic2 = height*1/2;
//
// Final Aspect Ratio Calculations
float pic1WidthAdjusted, pic1HeightAdjusted, pic2WidthAdjusted, pic2HeightAdjusted;
//Adjusted values ased on rect() variables, not Image values
pic1WidthAdjusted = rectWidthPic1 * imageWidthRatioPic1;
pic1HeightAdjusted = rectHeightPic1 * imageHeightRatioPic1;
pic2WidthAdjusted = rectWidthPic2 * imageWidthRatioPic2;
pic2HeightAdjusted = rectHeightPic2 * imageHeightRatioPic2;
println (pic1Width, pic1Height, pic2Width, pic2Height);
println (pic1WidthAdjusted, pic1HeightAdjusted, pic2WidthAdjusted, pic2HeightAdjusted);
//
//
//Rectangle Layout & Image Printing on Canvas
color red=#FF0000;
fill(red);
//rect(rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1); //Image 1, landscape presentation
rect(rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2); //Image 2, landscape presentation 
// Image using Rect() Variables
// Question: does no aspect ration look good? No ... continue with Aspect Ratio
//image(pic1, rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1); //No Aspect Ratio
//image(pic2, rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2); //Images fit in to rectangles
// Change the Rect() Variables to Aspect Ratio
image(pic1, rectXPic1, rectYPic1, pic1WidthAdjusted, pic1HeightAdjusted);
println ("Image one looks good, put some text underneath to fill in the space."); //Great Design Change for Aspect Ratio
//image(pic2, rectXPic2, rectYPic2, pic2WidthAdjusted, pic2HeightAdjusted);
//Center image in rect(), pic2, by changing the yRect() value
image(pic2, rectXPic2, rectYPic2+(rectYPic2*1/5), pic2WidthAdjusted, pic2HeightAdjusted);
