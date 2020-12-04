PImage pic;
float imageStartWidth, imageStartHeight, imageWidth, imageHeight;
float imageWidthRatio, imageHeightRatio;
//
size(600, 300); //fullScreen(), displayWidth & displayHeight //Square, Landscape, or Portrait
//
pic = loadImage("Obi-wan-star-wars-jedi-23864621-800-600.jpg"); //Dimension: 800 Width, 600 Height
imageWidthRatio = 800.0/800.0; //must be decmals due to float, larger # for aspect ratio, similar to style="width:100%"
imageHeightRatio = 600.0/800.0; //must be decmals due to float, <1 for aspect ratio, similar to style="height:auto"
imageStartWidth = width*0;
imageStartHeight = height*0;
imageWidth = width*imageWidthRatio; //Aspect Ratio
imageHeight = width*imageHeightRatio; //Aspect Ratio
if (imageHeight > height) println("Image display issues");
//
//rect(imageStartWidth, imageStartHeight, imageWidth, imageHeight); //Presentation is landscape
image(pic, imageStartWidth, imageStartHeight, imageWidth, imageHeight);
