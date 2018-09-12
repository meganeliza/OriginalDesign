/*
fishy business 

click to give him fish ;)

*/

void setup()
{
  size(400,400);
  background(188, 167, 148);
  frameRate(20);
  
}

int y = 0;
void draw()
{

   catHead(196);

   // winky eye 
   {  noStroke();
      fill(0, 0, 0);
      ellipse(166,173,20,y);
      y = y + 20;
      
      if (y > 20)
      y = y - 21;
         
    }
   

}

void catHead(int c)
{
    // tail
    stroke(113, 85, 5);
    strokeWeight(30);
    line(190, 310, 100, 280);
    
    noStroke();
    fill(113, 85, 5);
    triangle(178,122,253,172,297,120); // left ear
    ellipse(c-6, 270, 100, 120); // cat body
    
    fill(255, 255, 255);
    ellipse(c, 177,136,120); // cat head
    triangle(201,123,129,166,106,126); // right ear
    
    
    fill(0, 0, 0);
    // winky eye code -- see above ellipse(166,173,20,20); 
    ellipse(c + 31, 175, 20, 20); // cat regular eye
    fill(117, 34, 34);
    ellipse(198, 200, 18, 10); // cat nose
    fill(108, 74, 74);
    
    // arms or legs
    stroke(255, 255, 255);
    strokeWeight(25);
    line(175, 300, 180, 330);
    line(200, 300, 200, 330);
    

}


int bodyLength = 50;
int height = 30;
int tailWidth = bodyLength/3;
int tailHeight = height/2;

void Fish()
{
  noStroke();
  // fish body
  fill(random(40), random(172), random(206));
  ellipse(mouseX, mouseY, bodyLength, height);
  
  // fish tail
  triangle(mouseX-bodyLength/2, mouseY, 
  mouseX-bodyLength/2-tailWidth, mouseY-tailHeight, mouseX-bodyLength/2-tailWidth,
  mouseY+tailHeight);

  // fish eye
  fill(255, 0, 0);
  ellipse(mouseX+bodyLength/4, mouseY, 8, 8);
}

void mousePressed()
{
  Fish();
}

