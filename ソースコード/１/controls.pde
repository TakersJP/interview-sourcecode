void keyPressed(){
  //move right/left
  if(keyCode == RIGHT)            speedX = SPEED;
  else if(keyCode == LEFT)        speedX = -SPEED;
  //jump
  if(keyCode == ' ' && !isJumping) {isJumping = true; speedY = -5;}
}

void keyReleased(){
  if(keyCode == RIGHT || keyCode == LEFT)
    speedX = 0;
    
  //choose scene
  if(key == 'p')
    scene[0] = "p";
  if(key == 'm')
    scene[1] = "m";
  if(key == 'e')
    exit(); 
}
