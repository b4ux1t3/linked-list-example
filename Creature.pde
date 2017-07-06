public class Creature{
  public int size;
  public float xpos, ypos;
  
  public Creature(int size){
    this.size = size;
    this.xpos = random(400);
    this.ypos = random(400);
  }
  
  public void show(){
    ellipse(this.xpos, this.ypos, this.size, this.size);
  }
}