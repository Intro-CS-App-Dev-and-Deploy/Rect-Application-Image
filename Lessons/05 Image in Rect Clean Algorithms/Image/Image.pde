//Global Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
float picWidthAdjusted1=0.0, picHeightCalculated1=0.0; //Explained for Algorithm only
float picWidthAdjusted2=0.0, picHeightCalculated2=0.0; //Explained for Algorithm only
float picWidthCalculated3=0.0, picHeightAdjusted3=0.0; //Explained for Algorithm only
float picWidthCalculated1=0.0, picWidthCalculated2=0.0, picHeightCalculated3=0.0; //Unused for Algorithm Copying only
float topHalfX, topHalfY, topHalfWidth, topHalfHeight; 
float bottomHalfX, bottomHalfY, bottomHalfWidth, bottomHalfHeight;
PImage pic1, pic2, pic3;
Boolean nightMode=false;
int tintDayMode=255, tintDayModeOpacity=50;
int tintRed=64, tintGreen=64, tintBlue=40, tintNightModeOpacity=85;
//
void setup()
{
  size(800, 600); //Landscape
  //Copy Display Algorithm from Hello World
  //fullScreen(); //displayWidth, displayHeigth
  appWidth = width;
  appHeight = height;
  //
  //Population
  pic1 = loadImage("../../../Images Used/Landscape & Square Images/Obi-wan-star-wars-jedi-23864621-800-600.jpg");
  pic2 = loadImage("../../../Images Used/Landscape & Square Images/bike.jpg");
  pic3 = loadImage("../../../Images Used/Portrait/10-star-wars-darth-vader-portrait-wallpaper-1-325x485.jpg");
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth-1;
  backgroundImageHeight = appHeight-1;
  topHalfX = appWidth * 1/4;
  topHalfY = appHeight * 1/20;
  topHalfWidth = appWidth * 1/2;
  topHalfHeight = appHeight * 13/20;
  bottomHalfX = appWidth *1/2;
  bottomHalfY = appHeight * 3/4;
  bottomHalfWidth = appWidth * 1/4;
  bottomHalfHeight = appHeight * 4/20;
  //
  //Image Dimensions for Aspect Ratio: image meta data
  //Note: meta explored in MP3's or music files
  //Note: Dimensions are found in the image file / Right Click / Properties / Details
  int picWidth1 = 800; //Obi Landscape
  int picHeight1 = 600;
  int picWidth2 = 860; //Bike Landscape
  int picHeight2 = 529;
  int picWidth3 = 325; //DarthVader Portrait
  int picHeight3 = 485;
  //
  //Image Orientation: Landscape, Portrait, Square
  //Scaling Image size with aspect ratio requires larger dimension
  float smallerDimension1, smallerDimension2, smallerDimension3;
  float largerDimension1, largerDimension2, largerDimension3;
  float imageWidthRatio1=0.0, imageHeightRatio1=0.0;
  float imageWidthRatio2=0.0, imageHeightRatio2=0.0;
  float imageWidthRatio3=0.0, imageHeightRatio3=0.0;
  if ( picWidth1 >= picHeight1 ) { //True if Landscape or Square
    largerDimension1 = picWidth1;
    smallerDimension1 = picHeight1;
    //
    picWidthAdjusted1 = backgroundImageWidth; //from rect() layout //stretch or reduce
    imageHeightRatio1 = smallerDimension1 / largerDimension1;
    picHeightCalculated1 = picWidthAdjusted1 * imageHeightRatio1;
    if ( int (picHeightCalculated1) > int (backgroundImageHeight) ) { //Error Catch
      println("STOP: image background height is too big for rectangle layout");
      exit(); //stop further use of the APP
    }
  } else { //False if Portrait
    largerDimension1 = picHeight1;
    smallerDimension1 = picWidth1;
    //
    picHeightCalculated1 = backgroundImageHeight; //from rect() layout //stretch or reduce
    imageWidthRatio1 = smallerDimension1 / largerDimension1;
    picWidthAdjusted1 = picHeightCalculated1 * imageWidthRatio1;
    if ( int (picWidthCalculated1) > int (backgroundImageWidth) ) { //Error Catch
      println("STOP: image background width is too big for rectangle layout");
      exit(); //stop further use of the APP
    }
  }
  if ( picWidth2 >= picHeight2 ) { //True if Landscape or Square
    largerDimension2 = picWidth2;
    smallerDimension2 = picHeight2;
    //
    picWidthAdjusted2 = topHalfWidth; //from rect() layout //stretch or reduce
    imageHeightRatio2 = smallerDimension2 / largerDimension2;
    picHeightCalculated2 = picWidthAdjusted2 * imageHeightRatio2;
    if ( int (picHeightCalculated2) > int (topHalfHeight) ) { //Error Catch
      println("STOP: image 2 height is too big for rectangle layout");
      exit(); //stop further use of the APP
    }
  } else { //False if Portrait
    largerDimension2 = picHeight2;
    smallerDimension2 = picWidth2;
    //
    picHeightCalculated2 = topHalfHeight; //from rect() layout //stretch or reduce
    imageWidthRatio2 = smallerDimension2 / largerDimension2;
    picWidthAdjusted2 = picHeightCalculated2 * imageWidthRatio2;
    if ( int (picWidthCalculated2) > int (topHalfWidth) ) { //Error Catch
      println("STOP: image 2 width is too big for rectangle layout");
      exit(); //stop further use of the APP
    }
  }
  if ( picWidth3 >= picHeight3 ) { //True if Landscape or Square
    largerDimension3 = picWidth3;
    smallerDimension3 = picHeight3;
    //
    picWidthCalculated3 = bottomHalfWidth; //from rect() layout //stretch or reduce
    imageHeightRatio3 = smallerDimension3 / largerDimension3;
    picHeightAdjusted3 = picWidthCalculated3 * imageHeightRatio3;
    if ( int (picHeightCalculated3) > int (bottomHalfHeight) ) { //Error Catch
      println("STOP: image 3 height is too big for rectangle layout");
      exit(); //stop further use of the APP
    }
  } else { //False if Portrait
    largerDimension3 = picHeight3;
    smallerDimension3 = picWidth3;
    //
    picHeightAdjusted3 = bottomHalfHeight; //from rect() layout //stretch or reduce
    imageWidthRatio3 = smallerDimension3 / largerDimension3;
    picWidthCalculated3 = picHeightAdjusted3 * imageWidthRatio3;
    if ( int (picWidthCalculated3) > int (bottomHalfWidth) ) { //Error Catch
      println("STOP: image 3 width is too big for rectangle layout");
      exit(); //stop further use of the APP
    }
  }
  //
  //Rectangular Layout and Image Drawing to CANVAS
  rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  rect( topHalfX, topHalfY, topHalfWidth, topHalfHeight ); //Top Half
  rect( bottomHalfX, bottomHalfY, bottomHalfWidth, bottomHalfHeight ); //Bottom half
  //
  //Background Image must be single executed code
  if ( nightMode == false ) tint(tintDayMode, tintDayModeOpacity); //Gray Scale: use 1/2 tint value for white (i.e. 128/256=1/2)
  if ( nightMode == true ) tint(tintRed, tintGreen, tintBlue, tintNightModeOpacity); //RGB: Night Mode
  //image( pic, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
  image( pic1, backgroundImageX, backgroundImageY, picWidthAdjusted1, picHeightCalculated1);
  //
}//End setup
//
void draw()
{
  image( pic2, topHalfX, topHalfY, picWidthAdjusted2, picHeightCalculated2 );
  image( pic3, bottomHalfX, bottomHalfY, picWidthCalculated3, picHeightAdjusted3 );
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
  //
  //Mouse Pressed will control background image
  if (mouseButton == LEFT) {
    nightMode = false;
    rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
    tint(tintDayMode, tintDayModeOpacity); //Gray Scale: use 1/2 tint value for white (i.e. 128/256=1/2)
    image( pic1, backgroundImageX, backgroundImageY, picWidthAdjusted1, picHeightCalculated1);
    //
  }
  if (mouseButton == RIGHT) {
    nightMode = true;
    rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
    tint(tintRed, tintGreen, tintBlue, tintNightModeOpacity); //RGB: Night Mode
    image( pic1, backgroundImageX, backgroundImageY, picWidthAdjusted1, picHeightCalculated1);
  }
}//End mousePressed
//
//End Main Program
