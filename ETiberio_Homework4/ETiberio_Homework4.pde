Table data;

ArrayList<Win> wins = new ArrayList<Win>();

PFont font;
PFont fontH1;
String GraphTitle = "YANKEES  VS.  RED  SOX WINS  SINCE  1994";

PImage NYY;
PImage BOS;

void setup(){
 size(900,300);
 smooth();
 font=createFont("Helvetica", 20,true);
 fontH1=createFont("Bebas", 20,true);

 
BOS=loadImage("BOS1.png");
NYY=loadImage("NYY1.png");
 
 //load Red Sox/Yankees Wins data
 data = loadTable("BOS_NYY_Wins.csv","header");
 
 //get data from each row in .csv
 for (int i=0; i<data.getRowCount(); i++){
  TableRow row = data.getRow(i);
  
  //new class for data from .csv doc
  Win a = new Win();
  Win b = new Win();
  //get data from 'year' row, etc.
  a.year = row.getInt("Year");
  a.redsox = row.getInt("Red Sox");
  b.year = row.getInt("Year");
  b.yankees = row.getInt("Yankees");
  


//map data onto screen
  map(a.redsox, 0, 114, 0, height);
  a.x= i*40;
 
  wins.add(a);
  
  map(b.yankees, 0, 114, 0, height);
  b.x= i*40;

  wins.add(b);
  
 }
  
}

void draw(){
    background(74,119,122);
    fill(255);
    textFont(fontH1,20);
    text(GraphTitle, 290,50);
    
    
    for (Win a : wins){
    a.display();
    a.rollover();

    for (Win b : wins){
    b.display(); 
    b.rollover();
    }
  
 
  }
}