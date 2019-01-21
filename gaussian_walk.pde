import java.util.Random;

class Walker{
  //coordinates of walker on screen
  int x;
  int y;
  
  //random objects for x and y
  Random rx;
  Random ry;
  
  
  Walker(){
    //start walker in middle of screen
    x=width/2;
    y=height/2;
    
    rx = new Random();  
    ry = new Random();
    }
  
  void step(){
    //step function increases x  an y coordinate by a gaussian distributed number
    //meaning nextGaussian() returns a number between -6 and 6 (std), with gaussian probability
  x += (int) (rx.nextGaussian()*6);
  y += (int) (ry.nextGaussian()*6);
  
 
    }
    
  void display(){
    //display a black ellipse at x and y coordinate
    stroke(0);
    fill(0);
    ellipse(x,y,5,5);
  }
    
}


Walker w;

void setup(){
    //creating background and walker object once
    frameRate(60);
    fullScreen();
    background(255);
    w = new Walker();
}

void draw(){
  //looping and calling step() and display() 
  w.step();
  w.display();
}
  
    
