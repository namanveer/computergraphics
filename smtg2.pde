  ArrayList<Ball> balls;
   float a;
   void setup(){
     size(600,600);
      balls = new ArrayList<Ball>();
      }
   void draw() {
     background(230,230,250);
     balls.add(new Ball());
      for (Ball balls:balls){
       balls.fall();
       balls.display();
      }
   }
   class Ball {
 
     float x=random(width);
     float y=random(-200,100);
     float yspeed=random(3,4);
     float a=random(40);
 
     void fall(){
       if (y<height) {
       y+=yspeed;  
       } 
 }
     void display(){
       fill(random(255),random(255),random(255),random(255));
       noStroke();
       ellipse(x,y,a,a);}
   }
