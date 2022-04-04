//Global Variables
int reset, smallerDisplayDimension, mouthOpen;
float rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight;
float faceX, faceY, faceDiameter;
float leftEyeX, leftEyeY, eyeDiameter;
float rightEyeX, rightEyeY, rightDiameter;
float mouthX1, mouthY1, mouthX2, mouthY2;
float xnose1, ynose1, xnose2, ynose2, xnose3, ynose3;
//
//Display Geomtery
fullScreen(); 
//Landscape, not square or portrait
int appWidth = displayWidth, appHeight = displayHeight; 
println (width, height, displayWidth, displayHeight);
println(appWidth, appHeight);
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
rightEyeX = appWidth*2.6/4;
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
strokeWeight(mouthOpen); //testing: 100=400/4, mouthOpen
line(mouthX1, mouthY1, mouthX2, mouthY2);
strokeWeight(reset); // reset to 1 pixel
//Measle
float measleDiameter = random( smallerDisplayDimension*1/100, smallerDisplayDimension*1/25);
float measleRadius = measleDiameter*1/2;
println ( measleRadius );
float measleX = random( rectFaceX+measleRadius, ((rectFaceX+rectFaceWidth ) - measleRadius) );
float measleY = random( rectFaceY+measleRadius, ((rectFaceY+rectFaceHeight) - measleRadius) ); //Very small measle
color green=#00FF0E, measleColour=green, whiteReset=#000000; //Range of measle size: small=*1/100
//rect();
//random values given other variabls (similar to button code)
noStroke();
fill(measleColour);
ellipse(measleX, measleY, measleDiameter, measleDiameter);
stroke(reset);
fill(whiteReset);
