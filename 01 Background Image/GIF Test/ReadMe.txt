
Use a GIF Library

Example

import gifAnimation.*;

Gif myAnimation;


void setup() {
  size(1110, 900); 

  myAnimation = new Gif(this, "ec828ffa1181f74b16a33eddbbe26787.gif");
  myAnimation.play();
}

void draw() {
  image(myAnimation, 10, 10);
}





See these Websites

https://forum.processing.org/two/discussions/tagged/gifanimation.html

https://github.com/antiboredom/p5.gif.js