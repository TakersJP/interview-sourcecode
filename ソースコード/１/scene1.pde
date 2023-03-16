//this is the main game scene

void scene1(){
  drawBackground();
  drawPlayer(); 
  drawPlatform();
  movePlayer();
  jumpPlayer();
  
}

void drawBackground(){
  background(loadImage("/Users/21choit/cosc123/activity10-TakersJP/medieval_withScenes/data/background_0.png"));
}

void drawPlayer(){
  image(loadImage("/Users/21choit/cosc123/activity10-TakersJP/medieval_withScenes/data/gameTile_15.png"),x,y); 
}

void drawPlatform(){
    PImage tile13 = loadImage("/Users/21choit/cosc123/activity10-TakersJP/medieval_withScenes/data/gameTile_13.png"); 
  for(int col=0;col<6;col++)
    image(tile13,col*W,7*H);  
  image(loadImage("/Users/21choit/cosc123/activity10-TakersJP/medieval_withScenes/data/gameTile_14.png"),6*W,7*H);
}

void movePlayer(){
  x += speedX;
  y += speedY;
}

void jumpPlayer(){
if(isJumping){
    y= y + speedY;
    speedY = speedY + gravity;
    if(y >= 6*H){
      speedY = 0;
      isJumping = false;
      y = 6*H;
    }
  }
}
