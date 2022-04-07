void displaySetup() 
{
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
}//EndDisplaySetup
