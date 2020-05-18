float wholeBrick = 10;
float halfBrick = 3.3;
float col, row;
Pattern[] patArray = new Pattern[9];
//Hardcode the brick patterns for now;
Lego blockA;
Lego blockB;
void setup() {
  size(1000, 1000, P2D);
  col = 1000;
  row = 1000;
  //after hardcoding patterns then use a loop to build 9 distint ones
  for (int i =0; i<patArray.length; i++) {
    patArray[i] = new Pattern(i+1);
  }
  blockA = new Lego(wholeBrick, 0, 0);
  blockB = new Lego(halfBrick, 0, 0);
}
Boolean begin = false;
void draw() {
  if (begin) {
    beginDraw();
  }
  begin = true;
}
void beginDraw() {
  background(255);
  for (int across=0; across < row; across+=10) {
    blockB.location.x  = random(row);
    blockA.location.x  = random(col);
    for (int down=0; down < col; down+=10) {
      //rect(across, down, 10, 10);
      for (int i =0; i<patArray.length; i++) {
        if (i==1 || i==3 || i==6 || i ==8) {
          fill(random(255),random(100),random(40));
          blockA.display(patArray[i]);
        } else {
          fill(i+20, i, 0);
          blockB.display(patArray[i]);
        }
      }
      blockB.location.x  += 100;
      blockA.location.x  += 100;
    }
    blockB.location.y  += 60;
    blockA.location.y  += 60;
  }
  blockB.location.x  = 0;
  blockA.location.x  = 0;
  blockB.location.y  = 0;
  blockA.location.y  = 0;
}
