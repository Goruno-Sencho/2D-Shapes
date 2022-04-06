void population() 
{
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

}//End population
