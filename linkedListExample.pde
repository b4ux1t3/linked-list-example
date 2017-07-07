LinkedList list = new LinkedList(new Creature(50));

void setup(){
  size(400,400);
  
}

void draw(){
  if (list.getCount() < 1000){
    list.Add(new Creature((int)random(50)));
    background(0); 
    list.Iterate();
    println(frameRate, "\tFPS");
    println(list.getCount(), "\tItems in list");
  } else if (list.getCount() == 1000){
    println("You score is ", frameRate * list.getCount());
    list.Add(new Creature((int)random(50)));
  }
  
  ellipse(mouseX, mouseY, 30, 30);
}