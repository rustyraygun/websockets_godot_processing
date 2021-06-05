import websockets.*;


WebsocketServer ws;

void setup(){
  size(800, 800);
  ws= new WebsocketServer(this,8025,"/points");
}

void draw(){
  background(0);
}

void webSocketServerEvent(String msg){
  println(msg);
 ws.sendMessage(msg);

}
