class Pattern {
  int index;
  Pattern(int index) {
    this.index = index;
  }

  void execute(float pattern, float xpos, float ypos, float h, float w) {
    if (pattern == 0) { //
      pattern1(xpos, ypos, h, w);
    }
    if (pattern == 1) { //halfBrick
      pattern2(xpos +20, ypos-10, h, w);
    }
    if (pattern ==2) {
      pattern3(xpos+40, ypos, h, w);
    }
    if (pattern == 3) { //halfBrick
      pattern4(xpos+60, ypos-10, h, w);
    }
    if (pattern == 4) {
      pattern1(xpos+80, ypos, h, w);
    }
    if (pattern == 5) {
      pattern5(xpos+100, ypos-10, h, w);
    }
    if (pattern ==6) { //halfBrick
      pattern2(xpos+120, ypos-10, h, w);
    }
    if (pattern == 7 ) {
      pattern3(xpos+140, ypos, h, w);
    }
    if (pattern==8) { //halfBricj
      pattern4(xpos+160, ypos-10, h, w);
    }
  }

  void pattern1(float xpos, float ypos, float h, float w) {
    rect(xpos, ypos - 10, h, w);
    rect(xpos, ypos + 10, h, w);
    rect(xpos, ypos + 30, h, w);
  }
  void pattern2(float xpos, float ypos, float h, float w) {
    rect(xpos, ypos, h, w);
    rect(xpos+(3.3*2), ypos+(3.3*2), h, w);
    rect(xpos, ypos+20, h*3, w*3);
    rect(xpos+(3.3*2), ypos+40, h, w);
    rect(xpos, ypos+40+(3.3*2), h, w);
  }
  void pattern3(float xpos, float ypos, float h, float w) {
    rect(xpos, ypos, h, w);
    rect(xpos, ypos+10, h, w);
    rect(xpos, ypos+20, h, w);
  }
  void pattern4(float xpos, float ypos, float h, float w) {
    //fix this pattern
    rect(xpos, ypos+(3.3*2), h, w);
    rect(xpos+(3.3*2), ypos, h, w);
    rect(xpos, ypos+20, h*3, w*3);
    rect(xpos, ypos+40, h, w);
    rect(xpos+(3.3*2), ypos+40+(3.3*2), h, w);
  }
  void pattern5(float xpos, float ypos, float h, float w) {
    rect(xpos, ypos+20, h*3, w*3);
  }
}
