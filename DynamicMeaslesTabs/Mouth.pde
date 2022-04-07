//Global Variales
float mouthX1, mouthY1, mouthX2, mouthY2, mouthOpen;
void mouthDraw() 
{
  //rect();
int mouthWidth = int ( mouthX2 - mouthX1 );
float mouthHeight = mouthOpen;
//rect(mouthX1-mouthOpen*1/2, mouthY1-mouthOpen*1/2, mouthWidth+mouthOpen, mouthHeight);
strokeWeight(mouthOpen); //testing: 100=400/4, mouthOpen=height*1/4
line(mouthX1, mouthY1, mouthX2, mouthY2);
strokeWeight(reset); // reset to 1 pixel
}//End mouthDraw
