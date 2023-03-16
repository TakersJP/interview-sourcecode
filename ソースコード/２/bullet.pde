void displayBullet(){
  line(bullet_x, bullet_y, bullet_x, bullet_y+ bullet_len);
  line(bullet_x2, bullet_y2, bullet_x2, bullet_y2+ bullet_len);
}

void moveBullet(){
  if(bullet_active){
    bullet_y-=6;
    if(bullet_y<0) bullet_active = false;
  }else{
    bullet_x = ship_x;
    bullet_y = ship_y;
  }
  
  if(bullet_active2){
    bullet_y2-=6;
    if(bullet_y2<0) bullet_active2 = false;
  }else{
    bullet_x2 = ship_x;
    bullet_y2 = ship_y;
  }
}

void detectCollisions(){
  if(dist(bullet_x,bullet_y,enemy_x,enemy_y)<enemy_size/2){ //not accurate bullet_active = false;
    score++;
  }
}

void mouseReleased(){
  if(bullet_active)
    bullet_active2 = true;
    
  bullet_active = true;
}
