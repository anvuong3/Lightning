import processing.sound.*;
SoundFile file;
String thunder = "thunder.wav";
String path;
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
boolean thunders = false;


void setup()
{
  size(500,500);
    path = sketchPath(thunder);
    file = new SoundFile(this, path);

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

      ellipse(106+115,88-20, 135,135);
  ellipse(55+115,130-50, 87,87);
  ellipse(198+115, 107-50, 87,87);
  ellipse(228+115,135-50, 116, 116);
  ellipse(106+115,185-50, 100, 100);
  ellipse(167+115,164-50, 123, 123);
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
      ellipse(106+115,88-20, 135,135);
  ellipse(55+115,130-50, 87,87);
  ellipse(198+115, 107-50, 87,87);
  ellipse(228+115,135-50, 116, 116);
  ellipse(106+115,185-50, 100, 100);
  ellipse(167+115,164-50, 123, 123);
	  	startX = 250;
	  	startY = 150;
	  }

  }
  if(start == true && move == false){
  thunders = true;
    delay(30);
          ellipse(106+115,88-20, 135,135);
  ellipse(55+115,130-50, 87,87);
  ellipse(198+115, 107-50, 87,87);
  ellipse(228+115,135-50, 116, 116);
  ellipse(106+115,185-50, 100, 100);
  ellipse(167+115,164-50, 123, 123);
 
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
	}
}

void mousePressed()
{
  if(endY > 450){
  // file.play();
  }
	if(start == false){
		start = true;
	}
	if(start == true){
		if(move == false){

			move = true;
      
		}
	}
}

void keyPressed() {
    if(start == true){
      start = false;
    }else if(start ==false){
      start = true;
    }
 
}
