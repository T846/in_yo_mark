size(700,700,P3D);
noStroke();
lights();
float sphereSize = 80; 

float sphereX = 0;
float sphereY = 0;

//part of white
fill(255);
for(float i = 180; i<360; i++){
  pushMatrix();
  if(i<190){//形の微調整用
    sphereX = width/2 + sphereSize/2+3/*3は形の微調整*/ + sphereSize*3/2 * cos(radians(i));
  }else{
    sphereX = width/2 + sphereSize/2 + sphereSize*3/2 * cos(radians(i));
  }
  sphereY = height/2 + sphereSize*3/2 * sin(radians( i ) );
  translate( sphereX, sphereY,0);
  sphere( ( sphereSize+5/*5は形の微調整*/ ) * ( 360-i ) / 180 );
  popMatrix();
}
//part of black
fill( 80 );
for( float i = 0; i<180; i++ ){
  pushMatrix();
  if(i<10){//形の微調整
    sphereX = width/2 - sphereSize/2-3/*3は形の微調整*/ + sphereSize*3/2 * cos(radians(i));
  }else{
    sphereX = width/2 - sphereSize/2 + sphereSize*3/2 * cos(radians(i));
  }
  sphereY = height/2 + sphereSize*3/2 * sin(radians(i));
  translate( sphereX, sphereY, 0 );
  sphere( ( sphereSize+5/*5は形の微調整*/) * (180-i) / 180 );
  popMatrix();
}

//dubug
/*
stroke(0);
noFill();
line(width/2,0,width/2,height);
line(0,height/2,width,height/2);
//ellipse(width/2,height/2,sphereSize*4,sphereSize*4);

//part of white
stroke(255,0,0);
ellipse(width/2-sphereSize,height/2,sphereSize*2,sphereSize*2);
arc(width/2+sphereSize/2,height/2, sphereSize*3, sphereSize*3, PI, TWO_PI, OPEN);

//part of black
stroke(0,255,0);
ellipse(width/2+sphereSize,height/2,sphereSize*2,sphereSize*2);
arc(width/2-sphereSize/2,height/2, sphereSize*3, sphereSize*3, 0, PI, OPEN);
*/