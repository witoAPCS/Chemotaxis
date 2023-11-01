int speed = 3;

void setup(){
  noStroke();
  size(1100,1000); 
for (int k = 0; k < bob.length; k++) bob[k] = new bacteria((int)(Math.random()*1000)-100,(int)(Math.random()*800));
frameRate(120);

}



bacteria bob[] = new bacteria[100];

 
 
void draw(){
background(#ffffff);  
 for (int i = 0; i < bob.length-1; i++){

   if(get(bob[i].xPos+6,bob[i].yPos) == bob[i].c){
     bob[i].walk();}
   else if(get(bob[i].xPos-6,bob[i].yPos) == bob[i].c){
     bob[i].back();
   }else bob[i].vibrate(); 
   
   if(get(bob[i].xPos, bob[i].yPos + 6)== bob[i].c){
    bob[i].up();
   }else if(get(bob[i].xPos,bob[i].yPos-6)==bob[i].c){
    bob[i].down(); 
   }
   
   bob[i].show();
 }

 
 
}

public class bacteria{
  int xPos = 0;
  int yPos = 0;
  color c = #03fcad; 
  int colorRed;
  int colorGreen;
  int colorBlue;
   
  bacteria(int x, int y){
    xPos = x;
    yPos = y; 
    
     colorRed = 5 + speed;
     colorGreen = 252 - speed/2;
     colorBlue = 173 - speed/2;
    
  }
  
  void walk(){
          xPos+= (int)(Math.random()*25)-7; 
  }
  
  void back(){
    xPos-= (int)(Math.random()*20)-4; 
  }
  
  void show(){
   fill(3, 252, 173);
   fill(colorRed, colorGreen,colorBlue);
   rect(100+xPos,100+yPos,50,25); 
   ellipse(100+xPos,113+yPos,23,23); 
   ellipse(150+xPos,113+yPos,23,23);
   
   if(xPos > 1200) xPos = -200; 
  }
  
  void vibrate(){
    xPos += (int)(Math.random()*speed) -1;
  }
  
  void run(){
   xPos += (int)(Math.random()*20) -5; 
  }
  
  void up(){
    yPos+= (int)(Math.random()*7); 
  }
  
  void down(){
      yPos+= (int)(Math.random()*(-7)); 

  }
  
  int xGetter(){
    return xPos; 
  }
 
}
boolean coc = false;

void mouseClicked(){
for (int k = 0; k < bob.length; k++) bob[k] = new bacteria((int)(Math.random()*250),(int)(Math.random()*1000)-100);
 if(speed < 250){
 speed++;
 }
 else speed=3; 
 
 
}

void indicator(){
  
}
