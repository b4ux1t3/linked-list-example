LinkedList list = new LinkedList(new Creature(50));
int counter = 0;
void setup(){
  size(400,400);
  
}

void draw(){
  background(0);
  ellipse(mouseX, mouseY, 30, 30);
  if (counter % 13 == 0){
    list.Add(new Creature((int)random(50)));
  }
  list.Iterate();
}