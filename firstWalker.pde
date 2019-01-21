class Walker {
  //walker has attributes of x and y coordinated on screen
  int x;
  int y;

  Walker() {
    x=width/2;
    y=height/2;
  }

//method to display walker
  void display() {
    stroke(0);
    point(x, y);
  }

//method to take a step, with uniform random distribution
  void step() {
    int choice = int (random(4));
    if (choice==0) {
      x++;
    } else if (choice==1) {
      x--;
    } else if (choice==2) {
      y++;
    } else {
      y--;
    }
  }

}

  Walker w;
//create background and walker
  void setup() {
    size(640, 360);
    w = new Walker();
    background(255);
  }

//draw() loops and repeatedly calls .step() and .display() on walker object
  void draw() {
    w.step();
    w.display();
  }
