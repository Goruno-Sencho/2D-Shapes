//Global Variables
float rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight;
float faceX, faceY, faceDiameter;
float smallerDisplayDimension;
float leftEyeX, leftEyeY, eyeDiameter;
float rightEyeX, rightEyeY, rightDiameter;
float mouthX1, mouthY1, mouthX2, mouthY2;
float xnose1, ynose1, xnose2, ynose2, xnose3, ynose3;
//
//Display Geomtery
fullScreen(); 
//Landscape, not square or portrait
println (width, height, displayWidth, displayHeight);
//
//
//if (width>= height) {println("Landscape or Square");
String orientation = ( width>= height ) ? "Landscape or Square": "Portrait";
println("Display Orientation:", orientation);
if( orientation=="Portrait") println("Rotate your phone");
if (orientation=="Landscape or Square") {
  //Empty IF
} else { 
  println("Rotate your phone");
}



//Variable Population
smallerDisplayDimension = displayHeight; //Always in Landscape
faceX = displayWidth*1/2;
faceY = displayHeight*1/2;
rectFaceWidth = displayWidth;
rectFaceHeight = displayHeight;
rectFaceX = (displayWidth*1/2) - (smallerDisplayDimension*1/2); 
rectFaceY = displayHeight*0;
faceDiameter = smallerDisplayDimension;
leftEyeX = displayWidth*2/5 ;
rightEyeX = displayWidth*4/7;
leftEyeY = displayHeight*1/4;
rightEyeY = leftEyeY;
eyeDiameter = smallerDisplayDimension*1/4;
mouthX1 = leftEyeX;
mouthY1 = displayHeight*3/4;
mouthX2 = rightEyeX; 
mouthY2 = mouthY1;
//
//FaceDiameter = ;
//
//Face: Circle = Inscribing a Circle in a Square
//Center a circle on display orientation
rect(rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight);
ellipse(faceX, faceY, faceDiameter, faceDiameter);
//
//Left Eye
//rect();
ellipse(leftEyeX, leftEyeY, eyeDiameter, eyeDiameter);
//
//Right Eye
//rect();
ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter);
//
//Nose
//rect();
triangle(xnose1, ynose1, xnose2, ynose2, xnose3, ynose3);
//
//Mouth
//rect();
line(mouthX1, mouthY1, mouthX2, mouthY2);
//Measle
