int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;
boolean start = false;
int textColor = 0;
boolean move = false;
boolean ymove = false;
int y = 0;
int x = 0;

void setup()
{
  size(500,500);

}
void draw()
{
  if(start == false){
  	background(0);
  	fill(255);
  	textSize(50);
  	textAlign(CENTER);
  	textColor+=5;
  	if(textColor > 255){
  		textColor = 0;
  		delay(500);
  	}

  	fill(255,textColor,255);
  	text("Click to Start\n            \nClick Again \nMake a \nSpider Web", 250, 100);
  }
  fill(0,0,0,8);
  stroke(0,0,0,5);
  rect(0,0,500,500,0);
  fill(255);
  if(start == true){
  	ellipse(x, y, 50, 50);
  }
  if(move == true){
	x+=1;
	if(x >= 500){
		x = 0;
		ymove = true;
		move = false;
	}
  if(ymove == true){

		y+=1;
		if(y >= 500){
			y = 0;
			ymove = false;
		}
	}
}
}

void mousePressed()
{
	if(start == false){
		start = true;
	}
	if(start == true){
		if(move == false){
			move = true;
		}
	}
}

