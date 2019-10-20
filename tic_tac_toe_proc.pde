int a, b, c, d, e, f, g, h, i;
int check;

void setup() {
  a = -1;
  b = -1;
  c = -1;
  d = -1;
  e = -1;
  f = -1;
  g = -1;
  h = -1;
  i = -1;
  check = 0;
  size(600, 600);
  background(255);
  stroke(0);
  line(0, 0, 600, 0);
  line(200, 0, 200, 600);
  line(400, 0, 400, 600);
  line(0, 200, 600, 200);
  line(0, 400, 600, 400);
}

void draw() {
  if (check == 0) {
    player1();
  }
  if (check == 1) {
    player2();
  }
  whoWon();
}

void player1() {
  if (mouseX >= 0 && mouseX <= 200 && mouseY >= 0 && mouseY <= 200 && a == -1 && mousePressed == true) {
    stroke(#0004FD);
    line(0, 200, 200, 0);
    line(0, 0, 200, 200);
    a = 0;
    check = 1;
  }
  if (mouseX >= 200 && mouseX <= 400 && mouseY >= 0 && mouseY <= 200 && b == -1 && mousePressed == true) {
    stroke(#0004FD);
    line(200, 200, 400, 0);
    line(200, 0, 400, 200);
    b = 0;
    check = 1;
  }
  if (mouseX >= 400 && mouseX <= 600 && mouseY >= 0 && mouseY <= 200 && c == -1 && mousePressed == true) {
    stroke(#0004FD);
    line(400, 200, 600, 0);
    line(400, 0, 600, 200);
    c = 0;
    check = 1;
  }
  if (mouseX >= 0 && mouseX <= 200 && mouseY >= 200 && mouseY <= 400 && d == -1 && mousePressed == true) {
    stroke(#0004FD);
    line(0, 400, 200, 200);
    line(0, 200, 200, 400);
    d = 0;
    check = 1;
  }
  if (mouseX >= 200 && mouseX <= 400 && mouseY >= 200 && mouseY <= 400 && e == -1 && mousePressed == true) {
    stroke(#0004FD);
    line(200, 400, 400, 200);
    line(200, 200, 400, 400);
    e = 0;
    check = 1;
  }
  if (mouseX >= 400 && mouseX <= 600 && mouseY >= 200 && mouseY <= 400 && f == -1 && mousePressed == true) {
    stroke(#0004FD);
    line(400, 400, 600, 200);
    line(400, 200, 600, 400);
    f = 0;
    check = 1;
  }
  if (mouseX >= 0 && mouseX <= 200 && mouseY >= 400 && mouseY <= 600 && g == -1 && mousePressed == true) {
    stroke(#0004FD);
    line(0, 600, 200, 400);
    line(0, 400, 200, 600);
    g = 0;
    check = 1;
  }
  if (mouseX >= 200 && mouseX <= 400 && mouseY >= 400 && mouseY <= 600 && h == -1 && mousePressed == true) {
    stroke(#0004FD);
    line(200, 600, 400, 400);
    line(200, 400, 400, 600);
    h = 0;
    check = 1;
  }
  if (mouseX >= 400 && mouseX <= 600 && mouseY >= 400 && mouseY <= 600 && i == -1 && mousePressed == true) {
    stroke(#0004FD);
    line(400, 600, 600, 400);
    line(400, 400, 600, 600);
    i = 0;
    check = 1;
  }
}
void player2() {
  if (mouseX >= 0 && mouseX <= 200 && mouseY >= 0 && mouseY <= 200 && a == -1 && mousePressed == true) {
    stroke(#FD0000);
    circle(100, 100, 198);
    a = 1;
    check = 0;
  }
  if (mouseX >= 200 && mouseX <= 400 && mouseY >= 0 && mouseY <= 200 && b == -1 && mousePressed == true) {
    stroke(#FD0000);
    circle(300, 100, 198);
    b = 1;
    check = 0;
  }
  if (mouseX >= 400 && mouseX <= 600 && mouseY >= 0 && mouseY <= 200 && c == -1 && mousePressed == true) {
    stroke(#FD0000);
    circle(500, 100, 198);
    c = 1;
    check = 0;
  }
  if (mouseX >= 0 && mouseX <= 200 && mouseY >= 200 && mouseY <= 400 && d == -1 && mousePressed == true) {
    stroke(#FD0000);
    circle(100, 300, 198);
    d = 1;
    check = 0;
  }
  if (mouseX >= 200 && mouseX <= 400 && mouseY >= 200 && mouseY <= 400 && e == -1 && mousePressed == true) {
    stroke(#FD0000);
    circle(300, 300, 198);
    e = 1;
    check = 0;
  }
  if (mouseX >= 400 && mouseX <= 600 && mouseY >= 200 && mouseY <= 400 && f == -1 && mousePressed == true) {
    stroke(#FD0000);
    circle(500, 300, 198);
    f = 1;
    check = 0;
  }
  if (mouseX >= 0 && mouseX <= 200 && mouseY >= 400 && mouseY <= 600 && g == -1 && mousePressed == true) {
    stroke(#FD0000);
    circle(100, 500, 198);
    g = 1;
    check = 0;
  }
  if (mouseX >= 200 && mouseX <= 400 && mouseY >= 400 && mouseY <= 600 && h == -1 && mousePressed == true) {
    stroke(#FD0000);
    circle(300, 500, 198);
    h = 1;
    check = 0;
  }
  if (mouseX >= 400 && mouseX <= 600 && mouseY >= 400 && mouseY <= 600 && i == -1 && mousePressed == true) {
    stroke(#FD0000);
    circle(500, 500, 198);
    i = 1;
    check = 0;
  }
}
void whoWon(){
  if(e != -1){
    if(b != -1 && h != -1){
      if(e == 0 && b == 0 && h == 0){
        fill(0);
        textSize(32);
        text("Joueur 1 a gagné",100,300);
        stop();
      }else if (e == 1 && b == 1 && h == 1){
        fill(0);
        textSize(32);
        text("Joueur 2 a gagné",100,300);
        stop();
      }
    }
    if(d != -1 && f != -1){
      if(e == 0 && d == 0 && f == 0){
        fill(0);
        textSize(32);
        text("Joueur 1 a gagné",100,300);
        stop();
      }else if (e == 1 && d == 1 && f == 1){
        fill(0);
        textSize(32);
        text("Joueur 2 a gagné",100,300);
        stop();
      }
    }
    if(a != -1 && i != -1){
      if(e == 0 && a == 0 && i == 0){
        fill(0);
        textSize(32);
        text("Joueur 1 a gagné",100,300);
        stop();
      }else if (e == 1 && a == 1 && i == 1){
        fill(0);
        textSize(32);
        text("Joueur 2 a gagné",100,300);
        stop();
      }
    }
    if(c != -1 && g != -1){
      if(e == 0 && c == 0 && g == 0){
        fill(0);
        textSize(32);
        text("Joueur 1 a gagné",100,300);
        stop();
      }else if (e == 1 && c == 1 && g == 1){
        fill(0);
        textSize(32);
        text("Joueur 2 a gagné",100,300);
        stop();
      }
    }
  }
  if(a != -1){
    if(g != -1 && d != -1){
      if(a == 0 && g == 0 && d == 0){
        fill(0);
        textSize(32);
        text("Joueur 1 a gagné",100,300);
        stop();
      }else if(a == 1 && g == 1 && d == 1){
        fill(0);
        textSize(32);
        text("Joueur 2 a gagné",100,300);
        stop();
      }
    }
    if(b != -1 && c != -1){
      if(a == 0 && b == 0 && c == 0){
        fill(0);
        textSize(32);
        text("Joueur 1 a gagné",100,300);
        stop();
      }else if(a == 1 && b == 1 && c == 1){
        fill(0);
        textSize(32);
        text("Joueur 2 a gagné",100,300);
        stop();
      }
    }
  }
  if(i != -1){
    if(g != -1 && h != -1){
      if(i == 0 && g == 0 && h == 0){
        fill(0);
        textSize(32);
        text("Joueur 1 a gagné",100,300);
        stop();
      }else if(i == 1 && g == 1 && h == 1){
        fill(0);
        textSize(32);
        text("Joueur 2 a gagné",100,300);
        stop();
      }
    }
    if(c != -1 && f != -1){
      if(i == 0 && c == 0 && f == 0){
        fill(0);
        textSize(32);
        text("Joueur 1 a gagné",100,300);
        stop();
      }else if(i == 1 && c == 1 && f == 1){
        fill(0);
        textSize(32);
        text("Joueur 2 a gagné",100,300);
        stop();
      }
    }
  }
}
