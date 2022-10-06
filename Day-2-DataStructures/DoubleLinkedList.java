class Node{
    int data;
    Node next;
    Node prev;
    Node(int data){
        this.data=data;
    }
}

 class Dll {

    Node head;
    Node tail;
    public  void insertAtStart(int data) {
        Node newNode=new Node(data);
        newNode.next=head;
        newNode.prev=null;

        if(head!=null)
        head.prev=newNode;
        else
        tail=newNode;
        head=newNode;

    }
    public void insertAtEnd(int data){
        Node newNode=new Node(data);
        if(tail==null)
        {
            head=newNode;
            tail=newNode;
            return;
        }
        tail.next=newNode;
        newNode.prev=tail;
        tail=newNode;
    }
    public boolean find(int data){
        Node temp=head;
        while(temp!=null){
            if(temp.data==data)
            return(true);
            temp=temp.next;
        }
        return(false);
    }
    public void removeFromStart(){
        if(head==null)
        {
            System.out.println("list is empty");
            return;
        }
        if(head.next==null)
        {
            head=null;
            tail=null;
        }
        else{
        head=head.next;
        head.prev=null;
        }
        System.out.println("Node deleted from start");

    }
    public void removeFromEnd(){
        if(tail==null)
        {
            System.out.println("list is empty");
            return;
        }
        if(tail.prev==null)
        {
            head=null;
            tail=null;
        }
        else{
        Node temp=tail.prev;
        temp.next=null;
        tail=temp;
        }
        System.out.println("Node deleted from end");

    }
    public void printList(){
        if(head==null)
        {
            System.out.println("No elements to print");
            return;

        }
        Node temp=head;
        while(temp!=null){
            System.out.print(temp.data+" ");
            temp=temp.next;
        }
        System.out.println("\n");
    }
}

public class DoubleLinkedList{
    public static void main(String[] args) {
        //creating dll
        Dll dll=new Dll();
        //inserting
        // dll.insertAtStart(10);
        // dll.insertAtStart(20);
        //  dll.insertAtEnd(-10);
        // dll.insertAtEnd(-30);
        // dll.printList();
        //removing
        // dll.removeFromEnd();
        // dll.removeFromStart();
        //dll.printList();

        //finding
       // boolean find=dll.find(-10);
        //System.out.println("element found:"+find);
    }
}