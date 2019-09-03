float X = 400;

float speedX = -3;
int screen = 0;
void setup()
{
  size(800, 800);
}


void draw()
{
  background(0);



  X = X + speedX;

  if (0>X)
  {
    speedX = 6;
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
   ellipse(X, 400, 50, 50);
    X = X + speedX;
}
