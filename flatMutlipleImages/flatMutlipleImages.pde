// Notice Aspect Ratio ensures missing part on bottom
// Problem that must be solved with other design aspects
//
PImage pic1, pic2;
float rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1;
float pic1ImageWidthRatio, pic1ImageHeightRatio;
float picX1, picY1, picWidth1, picHeight1;
//
size(900, 400); //fullScreen(), displayWidth & displayHeight //Landscape presentation
//
pic1 = loadImage("Obi-wan-star-wars-jedi-23864621-800-600.jpg"); //Dimension: 800 Width, 600 Height
//pic1 is origonally landscape
pic2 = loadImage("bike.jpg"); //Dimension: 860 Width, 529 Height //bike.jpg is landscape presentation
//
rectXPic1 = width*1/4;
rectYPic1 = height*0;
rectWidthPic1 = width*1/2; //longer side in rectangle landscape presentation, from size()
rectHeightPic1 = height*1/2; //shorter side in rectangle landscape presentation, from size()
pic1ImageWidthRatio = 800.0/800.0; //Image width is longer, thus 1
pic1ImageHeightRatio = 600.0/800.0; //Iamge height is shorter, thus <1 = 
picX1 = rectXPic1;
picY1 = rectYPic1;
picWidth1 = rectWidthPic1 * pic1ImageWidthRatio; //remains longer side, "*1"
picHeight1 = picWidth1 * pic1ImageHeightRatio; //becomes shorter side, "*<1"
println(picWidth1, picHeight1);
if (picHeight1 > rectHeightPic1) picHeight1 = rectHeightPic1;
println("Image display issues"); //dimension might be 'cut-off'
//
/*
imageWidthRatio = 800.0/800.0; //must be decmals due to float, larger # for aspect ratio
imageHeightRatio = 600.0/800.0; //must be decmals due to float, <1 for aspect ratio
imageStartWidth = width*0;
imageStartHeight = height*0;
imageWidth = width*imageWidthRatio; //Aspect Ratio
imageHeight = width*imageHeightRatio; //Aspect Ratio
if (imageHeight > height) println("Image display issues");
*/
//
rect(rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1); //Landscape Presentation
image(pic1, picX1, picY1, picWidth1, picHeight1);
