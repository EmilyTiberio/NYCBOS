class Win{
  
  int year;
  int redsox;
  int yankees;

  
  float x;
  
  String yankeesboo = "BOO!";
  String gosox= "GO SOX!";
  
  


  
  Win(){
    
    
  }
  
  void display(){
   
   
   fill(191,8,8);
   rect(x+30, height-30, 15, -redsox);
  
   fill(0,0,92);
   rect(x+15, height-30, 15, -yankees);
   textFont(font,13);
   fill(0);
   text(year,x+15,height-15);
   
  
}
  
  void rollover(){
   if (mouseX > x+15 && mouseX< x+30 && mouseY<height-30){
   text(yankees, x+15, 150);
   fill(255);
   textFont(font,20);
   text(yankeesboo, 40,50);
   image(NYY, 420,75);
   
   }
   if (mouseX > x+30 && mouseX< x+45 && mouseY<height-30){
   text(redsox, x+30, 150);  
   fill(255);
   textFont(font,20);
   text(gosox, 770,50);
   image(BOS,420,75);
   }

 
   }
    
  }
  
  

  
  