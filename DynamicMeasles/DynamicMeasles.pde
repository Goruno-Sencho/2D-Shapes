//Global Variables
int reset, smallerDisplayDimension, mouthOpen;
int backgroundBlue;
color strokeColour, fillColour;
float rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight;
float faceX, faceY, faceDiameter;
float leftEyeX, leftEyeY, eyeDiameter;
float rightEyeX, rightEyeY, rightDiameter;
float mouthX1, mouthY1, mouthX2, mouthY2;
float xnose1, ynose1, xnose2, ynose2, xnose3, ynose3;
PImage mouthpic1;
String title = "press F!!!";
String No1 = "Reset!";
float titleX, titleY, titleWidth, titleHeight;
PFont titleFont;
color purple=#4B351B, resetDefaultInk=#4B351B;
color yellow=#F8FC03, Porple=#FA00F6, whiteReset=#FFFFFF, blackReset=#000000;
color yellowNightMode=#F8FC00, purpleNightMode=#FA0096; 
Boolean nightMode=false;
//
void setup() 
{
  fullScreen();
  int appWidth = displayWidth, appHeight = displayHeight; 
  println (width, height, displayWidth, displayHeight);
  println(appWidth, appHeight);

String orientation = ( width>= height ) ? "Landscape or Square": "Portrait";
println("Display Orientation:", orientation);
if( orientation=="Portrait") println("Rotate your phone");
if (orientation=="Landscape or Square") {
  //Empty IF
} else { 
  println("Rotate your phone");
}
 
titleX = width*4/10;
titleY = height*4/7;
titleWidth = width*3/14; 
titleHeight = height*1/10; 
titleFont = createFont("Sitka Text", 55);

fill(#EAAD61);
  //
//if (width>= height) {println("Landscape or Square");
  smallerDisplayDimension = appHeight; //Always in Landscape
  reset = smallerDisplayDimension / smallerDisplayDimension;
  faceX = appWidth*1/2;
  faceY = appHeight*1/2;
  rectFaceWidth = smallerDisplayDimension;
  rectFaceHeight = smallerDisplayDimension;
  rectFaceX = (appWidth*1/2) - (smallerDisplayDimension*1/2); 
  rectFaceY = appHeight*0;
  faceDiameter = smallerDisplayDimension;
  leftEyeX = appWidth*2/5 ;
  rightEyeX = appWidth*2.5/4;
  leftEyeY = appHeight*1/4;
  rightEyeY = leftEyeY;
  eyeDiameter = smallerDisplayDimension*1/4;
  mouthX1 = leftEyeX;
  mouthY1 = appHeight*3/4;
  mouthX2 = rightEyeX; 
  mouthY2 = mouthY1;
  mouthOpen = smallerDisplayDimension*1/4;
  xnose1 = faceX;
  ynose1 = leftEyeY;
  xnose2 = faceX - leftEyeY*1/2;
  ynose2 = faceY ;
  xnose3 = faceX + leftEyeY*1/2;
  ynose3 = faceY ;
  mouthpic1 = loadImage("PinClipart.com_closed-clipart_5703402.png");

//Face: Circle = Inscribing a Circle in a Square
//Center a circle on display orientation
//rect(rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight);
ellipse(faceX, faceY, faceDiameter, faceDiameter);
fill(#FFFFFF);
rect (titleX*1/20, titleY*1/4, titleWidth, titleHeight);
rect (titleX*1/90, titleY*5/8, titleWidth, titleHeight);
 //background(random(120, 255));
}
//
//End setup
void draw()
{
  //background(random(120, 255));
//
 if ( nightMode==true ) //Night Mode Choices
  {
    backgroundBlue = 0;
    strokeColour = yellowNightMode;
    fillColour = purpleNightMode;
    println("CRAZYTIME");
  } else
  {
    backgroundBlue = int( random(255) );
    strokeColour = yellow;
    fillColour = Porple;
    println("finetime");
  }
  //
fill(purple); //Ink, hexidecimal copied from Color Selector
textAlign(LEFT, LEFT); //Align X&Y, see Processing.org / Reference
//Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
textFont(titleFont, 50); //Change the number until it fits
text(title, titleX*1/20, titleY*1/4, titleWidth, titleHeight);
text(No1, titleX*1/90, titleY*5/8, titleWidth, titleHeight);
fill(resetDefaultInk);
//Measle
float measleDiameter = random( smallerDisplayDimension*1/100, smallerDisplayDimension*1/25);
float measleRadius = measleDiameter*1/2;
float measleX = random( rectFaceX+measleRadius, ((rectFaceX+rectFaceWidth ) - measleRadius) );
float measleY = random( rectFaceY+measleRadius, ((rectFaceY+rectFaceHeight) - measleRadius) ); //Very small measle
Boolean crazymode=false; 
//color green=#00FF0E, measleColour=green, whiteReset=#000000; //Range of measle size: small=*1/100
color measleColour = ( crazymode==false ) ? color ( 255, random(0,200), random(140) ) : color ( 255, random(0,90), 0) ; //ternary operator for day:night
color whiteReset=#FFFFFF;
//rect();
//random values given other variabls (similar to button code)
noStroke();
fill(measleColour);
ellipse(measleX, measleY, measleDiameter, measleDiameter);
stroke(reset);
fill(whiteReset);

//Left Eye
//rect();
//rect(leftEyeX-eyeDiameter*1/2, leftEyeY-eyeDiameter*1/2, eyeDiameter, eyeDiameter);
ellipse(leftEyeX, leftEyeY, eyeDiameter, eyeDiameter);



//
//Right Eye
//rect(rightEyeX-eyeDiameter*1/2, rightEyeY-eyeDiameter*1/2, eyeDiameter, eyeDiameter);
ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter);

//
//Nose
//rect();
//rect(xnose2, ynose1, xnose3-xnose2, ynose3-ynose1);
triangle(xnose1, ynose1, xnose2, ynose2, xnose3, ynose3);

//Mouth
//rect();
int mouthWidth = int ( mouthX2 - mouthX1 );
int mouthHeight = mouthOpen;
//rect(mouthX1-mouthOpen*1/2, mouthY1-mouthOpen*1/2, mouthWidth+mouthOpen, mouthHeight);
strokeWeight(mouthOpen); //testing: 100=400/4, mouthOpen=height*1/4
//line(mouthX1, mouthY1, mouthX2, mouthY2);
strokeWeight(reset); // reset to 1 pixel
image(mouthpic1, mouthX1*6/7, mouthY1*6/8, mouthX2*2/4, mouthY2*1/5);

}
 
//End draw
void keypressed() {
   if ( key == 'F' || key == 'f' ); 
  //if ( key == CODED && keyCode == LEFT) nightMode = false;
};//End keypressed
//
void mousepressed() {
};//End mousepressed
//
//End Main Program;
