void measleDraw() 
{
  //Measle
float measleDiameter = random( smallerDisplayDimension*1/100, smallerDisplayDimension*1/25);
float measleRadius = measleDiameter*1/2;
float measleX = random( rectFaceX+measleRadius, ((rectFaceX+rectFaceWidth ) - measleRadius) );
float measleY = random( rectFaceY+measleRadius, ((rectFaceY+rectFaceHeight) - measleRadius) ); //Very small measle

//color green=#00FF0E, measleColour=green, whiteReset=#000000; //Range of measle size: small=*1/100
color measleColour = ( nightMode==false ) ? color ( 255, random(0,200), random(140) ) : color ( 255, random(0,90), 0) ; //ternary operator for day:night

//rect();
//random values given other variabls (similar to button code)
noStroke();
fill(measleColour);
ellipse(measleX, measleY, measleDiameter, measleDiameter);
stroke(reset);
fill(whiteReset);
}//End measleDraw
