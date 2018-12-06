//add thank you code here
float yoff = 0.0;       
PImage img;


void setup() {
   background(100,100,255,50);
  size(1000,1000);
  img = loadImage ("cloud.jpg");
  //image (img,0,0,width*1,height/1);
  
  

}

void draw() {


   //background(100,100,255,50);
 //img = loadImage ("cloud.jpg");
  image (img,0,0,width*1,height/1);
 // frameRate (999999);
 
    
textAlign (CENTER);
textSize (50);
fill(0);
//img = loadImage ("cloud.jpg");
image (img,0,0,width*1,height/1);
text ("Thank You", 500,500);
  fill (0);
  
  
if (mousePressed) {
img = loadImage ("cloud.jpg");
image (img,0,0,width*1,height/1);
textAlign (CENTER);
textSize (50);
text ("For being in my life", 700,700);


}

  fill(#3683EA
  );
  // We are going to draw a polygon out of the wave points
  beginShape(); 
  
  float xoff = 0;       // Option #1: 2D Noise
  // float xoff = yoff; // Option #2: 1D Noise
  
  // Iterate over horizontal pixels
  for (float x = 0; x <= width; x += 10) {
    // Calculate a y value according to noise, map to 
    float y = map(noise(xoff, yoff), 0, 1, 650,750); // Option #1: 2D Noise
     //float y = map(noise(xoff), 0, 1, 650,750);    // Option #2: 1D Noise
   
    // Set the vertex
    vertex(x, y); 
    // Increment x dimension for noise
    xoff += -0.05;
  }
  // increment y dimension for noise
  yoff += -0.4;
  vertex(width, height);
  vertex(0, height);
  endShape(CLOSE);
  
  fill (255,255,255,50);
  rect (720,840,240,120);
  
  fill (0);
 textAlign (RIGHT);
 textSize (40);
 text ("TWIX", 880,910);
}
