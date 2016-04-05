Circle[] myCircles;
int numOfMyCircles = 50;
int currentCircle = 0;

void setup(){
  size(500,500);
  smooth();
  myCircles = new Circle[numOfMyCircles];
  for(int i = 0; i<myCircles.length; i++){
   myCircles[i] = new Circle(); 
  }
}

void draw(){
  background(0);
  for(int i = 0; i<numOfMyCircles; i++){
    myCircles[i].grow();
    myCircles[i].display();
  }
}

void mousePressed(){
  myCircles[currentCircle].begin(mouseX,mouseY);
  currentCircle++;
  if(currentCircle>=numOfMyCircles){
   currentCircle = 0; 
  }
}