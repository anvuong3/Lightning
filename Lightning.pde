int startX = 250;
int startY = 350;
int endX = 0;
int endY = 500;
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
  	text("Click to Start\n            \nClick Again \nMake \nLightning", 250, 100);
  }
  fill(0,0,0,8);
  stroke(0,0,0,5);
  rect(0,0,500,500,0);
  fill(255);

  if(start == true && move == true){
  		ellipse(106,88, 135,135);
	ellipse(55,150, 87,87);
	ellipse(198, 107, 87,87);
	ellipse(228,135, 116, 116);
	ellipse(106,185, 100, 100);
	ellipse(167,164, 123, 123);
  	strokeWeight(5);
	  stroke(random(180), 255, 255);
	  endX=startX + (int)random(-25, 25);
	  endY= startY +(int)random(0, 25);
	  line(startX, startY, endX, endY);
	  startX = endX;
	  startY = endY;
	  if (endY >=500){
	  	move = false;
	  	background(255, 255, 0);
	  	startX = 250;
	  	startY = 0;
	  }
  }
  if(move == true){
  	//   stroke(random(255), 255, 255);
  	// endX=startX + random(-9, 9);
  	// endY= startY +random(0, 9);
  	// line(startX, startY, endX, endY);
  	// startX= endX;
  	// startY= endY;
	// x+=1;
	// if(x >= 500){
	// 	x = 0;
	// 	ymove = true;
	// 	move = false;
	// }
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

