float x;
float y;
float X = 400;
float easing = 0.05;
float speedX = -3;
int screen = 0;
int score = 0;
void setup()
{
  size(800, 800);
  noStroke();
}


void draw()
{
  background(0);




  X = X + speedX;

  if (0>X)
  {
    speedX = 3;
  }

  if (screen == 0)
  {
    loadingscreen();
  }
  if (screen==1)
  {

    Game();
  }
}
void loadingscreen()
{
  text("Press enter to play", 350, 400);
  textSize(26);
  if (keyCode==ENTER)
  {
    screen=1;
  }
}

void Game()
{

  text("Score : "+score, 100, 100);
  float targetX = mouseX;
  float dx = targetX - x;
  x += dx * easing;

  float targetY = mouseY;
  float dy = targetY - y;
  y += dy * easing;

  rect(x, y, 30, 50 );
  ellipse(X, 400, 50, 50);
  X = X + speedX;
}
