int depth=0;
int limit=7;
float x,y,w,h;
String path="/AwtDraw";

void setup() {
	size(1440, 900);
	x=width/2;
	y=height/2;
	w=480;
	h=w;
	noFill();
	stroke(255);
	rectMode(CENTER);
}

void draw() {
	if(!keyPressed){
		background(0);
		drawRect(x,y,w,h,depth);
		depth=1;
	}
}


void drawRect(float x,float y, float w, float h, int depth){
	depth++;
	noFill();
	if(random(0,depth+5)>depth+4&&depth>2)fill(255);
	if(random(0,depth)>depth*0.95&&depth>4)fill(random(0,255),random(0,255),random(0,255));
	rect(x,y,w,h);
		if(depth<limit){
		if(random(0, 10)>4)drawRect(x-w/4,y-h/4,w*0.5,h*0.5,depth);
		if(random(0, 10)>5)drawRect(x+w/4,y-h/4,w*0.5,h*0.5,depth);
		if(random(0, 10)>5)drawRect(x-w/4,y+h/4,w*0.5,h*0.5,depth);
		if(random(0, 10)>6)drawRect(x+w/4,y+h/4,w*0.5,h*0.5,depth);
		}
}
void keyPressed(){
	if(keyPressed&&key=='s'){
		save(month()+"-"+day()+"-"+hour()+"-"+minute()+"-"+second()+".png");
		println("saved to: "+path);
	}
}

