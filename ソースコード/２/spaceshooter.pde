float ship_x = 0, ship_y = 375;
float bullet_x = 0, bullet_y = 375, bullet_x2 = 0, bullet_y2 = 375; 
boolean bullet_active = false, bullet_active2 = false;
float enemy_x = 200.0, enemy_y = 0.0, enemy_size = 40.0, bullet_len = 10; int score = 0;
PImage enemyIMG;
int rand = (int)(Math.random()*3);
float offset = 0;
void setup(){
  size(400,400); stroke(255); strokeWeight(3);
  enemyIMG = loadImage("/Users/21choit/cosc123/activity10-TakersJP/images/enemy.png");
}
void draw(){
  background(100);
  text("Score: " + score, 20,20); 
  //game loop
  moveSpaceship();
  moveBullet();
  moveEnemey(); 
  detectCollisions(); 
  displaySpaceship(); 
  displayBullet(); 
  displayEnemy();
}
