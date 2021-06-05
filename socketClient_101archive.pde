import websockets.*;

WebsocketClient socket;

void setup() 
  {
  size(800, 800);
  socket = new WebsocketClient(this, "ws://localhost:8025/points");
  
}



void draw() {

  if (mousePressed == true) {
    stroke(255);
    line(pmouseX, pmouseY, mouseX, mouseY);
  
    socket.sendMessage(pmouseX + " " + pmouseY + " " + mouseX + " " + mouseY);
  }
}



//void webSocketServerEvent(String drw_msg) {
//  //println(drw_msg);
//  //socket.sendMessage(drw_msg);
//}
