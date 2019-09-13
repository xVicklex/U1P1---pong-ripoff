float paddleX;
float paddleY;
float X = 400;
float easing = 0;
float speedX = -3;
int screen = 0;
int score = 0;
float d;
int circlesX[];
int circlesY[];

void setup()
{
  size(800, 800);
  noStroke();
  rectMode(CENTER);
  circlesX = new int[5];
  circlesY = new int[5];

  for (int i =0; i< 5; i++)
  {
    circlesX[i] =0;
  }
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
  text("Pong Ripoff", 300, 400);
  text("Press enter to play", 300, 750);
  textSize(26);
  if (keyCode==ENTER)
  {
    screen=1;
  }
}

void Game()
{

  X = X + speedX;
  text("Score : "+score, 100, 100);
  float dx = mouseX - paddleX;
  paddleX += dx ;

  float paddleY = mouseY;
  float dy = mouseY - paddleY;
  paddleY += dy ;

  rect(paddleX, paddleY, 30, 50 );
  ellipse(X, 400, 50, 50);



  float d = dist(X, 400, paddleX, paddleY);
  if (d<15)
  {
    speedX*=-1;
  }
}
