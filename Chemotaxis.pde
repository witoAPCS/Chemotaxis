void setup(){
  noStroke();
  size(1100,1000); 
for (int k = 0; k < bob.length; k++) bob[k] = new bacteria((int)(Math.random()*1000)-100,(int)(Math.random()*800));


}



bacteria bob[] = new bacteria[100];

 
 
void draw(){

  trail();
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
   
   
  bacteria(int x, int y){
    xPos = x;
    yPos = y; 
  }
  
  void walk(){
          xPos+= (int)(Math.random()*25)-7; 
  }
  
  void back(){
    xPos-= (int)(Math.random()*20)-4; 
    yPos+= (int)(Math.random()*5)-2;
  }
  
  void show(){
   fill(3, 252, 173); 
   rect(100+xPos,100+yPos,50,25); 
   ellipse(100+xPos,113+yPos,23,23); 
   ellipse(150+xPos,113+yPos,23,23);
  }
  
  void vibrate(){
    xPos += (int)(Math.random()*3) -1;
  }
  
  void run(){
   xPos += (int)(Math.random()*20) -5; 
  }
  
  void up(){
    yPos+= (int)(Math.random()*25)-7; 
  }
  
  void down(){
      yPos+= (int)(Math.random()*(-25))+7; 

  }
  
  int xGetter(){
    return xPos; 
  }
 
}
boolean coc = false;

void mouseClicked(){
for (int k = 0; k < bob.length; k++) bob[k] = new bacteria((int)(Math.random()*1000)-100,(int)(Math.random()*800));
if(coc == false){
coc = true;
}else{coc = false;}

}

void trail(){
 if(coc == false)
  background(#ffffff);
}
