public class LinkedList{
  private Node first;
  private Node last;
  private int count;
  public LinkedList(Creature firstValue){
     this.first = new Node(null, firstValue);
     this.last = this.first;
     this.count = 1;
  }
  
  public void Add(Creature newValue){
    // Start at the first node in the list
    Node current = this.first;
    
    // While there is a next node, make the current node
    // equal the next node
    while(current.Next() != null){
      current = current.Next();
    }
    
    // Once that loop finishes, we know that we are at the end.
    // We need to make a new node, and make that the current's
    // next node.
    Node newNode = new Node(current, newValue);
    current.next = newNode;
    
    // Next we need to set the LinkedList's last element to the newNode
    this.last = newNode;
    
    // Finally, we make the newNode have the current node as its previous.
    newNode.previous = current;
    this.count++;
  }
  public void Iterate(){
    Node current = this.first;
    while (current.Next() != null){
      current.value.show();
      current = current.Next();
    }
  }
  
  public int getCount(){
    return this.count;
  }
}

private class Node{
  private Node previous;
  private Node next;
  private Creature value;
  private Node(Node previous, Creature value){
    this.previous = previous;
    this.next = null;
    this.value = value;
  }
  
  private Node Next(){
    return this.next; 
  }
  
  private Node Previous(){
    return this.previous;
  }
}