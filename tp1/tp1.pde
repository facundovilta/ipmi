PImage paisaje;
void setup(){
  size(800,400);
  paisaje = loadImage("paisaje.jpg");
  background(225,238,240);

}
void draw(){
  image(paisaje,0,0,400,400);
  println("X:");
  println(mouseX);
  println("Y:");
  println(mouseY);
  fill(247,240,97);
  noStroke();
  ellipse(654,287,50,30);
  
  //rayos de luz//
  beginShape();
  vertex(643,273);
  vertex(637,276);
  vertex(476,39);
  vertex(572,31);
  endShape(CLOSE);
  beginShape();
  vertex(647,274);
  vertex(640,280);
  vertex(629,48);
  vertex(706,34);
  endShape(CLOSE);
  beginShape();
  vertex(657,273);
  vertex(661,279);
  vertex(774,120);
  vertex(722,74);
  endShape(CLOSE);
  beginShape();
  vertex(631,277);
  vertex(483,101);
  vertex(437,125);
  vertex(625,277);
  endShape(CLOSE);
 
  
  
//montañas//
  fill(137,133,119);
  noStroke();
  rect(400,374,400,26);
  noFill();
 fill(255);
 noStroke();
 triangle(653,285,669,264,694,285);
 beginShape();
 vertex(693,285);
 vertex(748,300);
vertex(689,328);
 vertex(654,284);
 endShape(CLOSE);
 beginShape();
 vertex(742,300);
 vertex(800,275);
 vertex(800,374);
 vertex(732,374);
 endShape(CLOSE);
 triangle(701,318,741,302,732,370);
 triangle(725,298,737,280,754,298);
 noFill();
 fill(113,93,9);
 noStroke();
 rect(708,348,100,30);

  noFill();
  fill(80,66,9);
  noStroke();
  
  triangle(482,288,500,264,557,288);
  beginShape();
  vertex(555,286);
  vertex(600,298);
  vertex(635,374);
  vertex(568,374);
  endShape(CLOSE);
 triangle(488,287,555,287,567,371);
 beginShape();
 vertex(581,301);
 vertex(641,266);
 vertex(692,323);
 vertex(614,323);
 endShape(CLOSE);
 beginShape();
 vertex(610,322);
 vertex(704,322);
 vertex(734,374);
 vertex(634,374);
 endShape(CLOSE);
 noFill();
 fill(59,48,4);
 noStroke();
 beginShape();
  vertex(400,243);
  vertex(475,273);
  vertex(569,374);
  vertex(400,374);
  endShape(CLOSE);
  
 
 

 
 //ellipse final//
 fill(137,133,119);
 noStroke();
 ellipse(661,377,400,20);
 noFill();
 //nubes//
 fill(255);
 noStroke();
 ellipse(500,200,100,20);
 ellipse(740,200,100,20);
 circle(470,186,30);
 circle(490,180,30);
 circle(510,186,30);
 circle(525,195,30);
 circle(710,186,30);
 circle(730,180,30);
 circle(750,186,30);
 circle(765,195,30);
 
 //nieve//
 triangle(500,264,486,282,550,282);
 
 
 

  
  
}
