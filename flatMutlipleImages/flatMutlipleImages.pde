// Notice Aspect Ratio ensures missing part on bottom
// Problem that must be solved with other design aspects
//
PImage pic1, pic2;
float rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1;
float picImageWidthRatio1, picImageHeightRatio1;
float picX1, picY1, picWidth1, picHeight1;
float rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2;
float picImageWidthRatio2, picImageHeightRatio2;
float picX2, picY2, picWidth2, picHeight2;
color red=#FF0004; //Show where image is too short
//
size(900, 680); //fullScreen(), displayWidth & displayHeight //Landscape presentation
// Note: height-700 will be slightly too big for first image, thus will need other GUI Design
// height-600 will make image spill over, height-900 will make both images spill over
//
pic1 = loadImage("Obi-wan-star-wars-jedi-23864621-800-600.jpg"); //Dimension: 800 Width, 600 Height
//pic1 is origonally landscape
pic2 = loadImage("bike.jpg"); //Dimension: 860 Width, 529 Height //bike.jpg is landscape presentation
//
rectXPic1 = width*1/4;
rectYPic1 = height*0;
rectWidthPic1 = width*1/2; //longer side in rectangle landscape presentation, from size()
rectHeightPic1 = height*1/2; //shorter side in rectangle landscape presentation, from size()
picImageWidthRatio1 = 800.0/800.0; //Image width is longer, thus 1
picImageHeightRatio1 = 600.0/800.0; //Image height is shorter, thus <1
picX1 = rectXPic1;
picY1 = rectYPic1;
picWidth1 = rectWidthPic1 * picImageWidthRatio1; //remains longer side, "*1"
picHeight1 = picWidth1 * picImageHeightRatio1; //becomes shorter side, "*<1"
if (picHeight1 > rectHeightPic1) println("Image #1 display issues"); //dimension might be 'cut-off'
//
rectXPic2 = width*1/8;
rectYPic2 = height*1/2;
rectWidthPic2 = width*6/8; //longer side in rectangle landscape presentation, from size()
rectHeightPic2 = height*1/2; //shorter side in rectangle landscape presentation, from size()
picImageWidthRatio2 = 860.0/860.0; //Image width is longer, thus 1;
picImageHeightRatio2 = 529.0/860.0; //Image height is shorter, thus <1 
picX2 = rectXPic2;
picY2 = rectYPic2;
picWidth2 = rectWidthPic2 * picImageWidthRatio2; //remains longer side, "*1"
picHeight2 = picWidth2 * picImageHeightRatio2; //becomes shorter side, "*<1"
if (picHeight2 > rectHeightPic2) println("Image #2 display issues"); //dimension might be 'cut-off'
//
fill(red);
rect(rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1); //Landscape Presentation
image(pic1, picX1, picY1, picWidth1, picHeight1);
rect(rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2); //Landscape Presentation
image(pic2, picX2, picY2, picWidth2, picHeight2);
