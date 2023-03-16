void displayEnemy(){
 image(enemyIMG,enemy_x, enemy_y, enemy_size, enemy_size);
}

void moveEnemey(){
  enemy_y+= 0.3;
  if(rand == 0)
    enemy_x = 200+100*sin(map(enemy_y, 0, height, 0, 8*PI));
  if(rand == 1){
    enemy_x = noise(offset)*height;
    offset += 0.01;
  }
   if(rand == 2){
      if(enemy_x == 200){
        enemy_x = enemy_x-200;
      }
      enemy_x += 0.3;
  }

 }
