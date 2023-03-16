void displaySpaceship(){
  triangle(ship_x,ship_y,ship_x+10,ship_y+20,ship_x-10,ship_y+20);
}
void moveSpaceship(){
  ship_x = mouseX;
}
