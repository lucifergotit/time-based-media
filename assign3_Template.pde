import processing.sound.*;
SoundFile song1;

float t; // currentTime
int t1 = 2000;  //2000ms  = after 2s
int t2 = 6000;  //6000ms = after 6s
int t3 = 10000; //10000ms = after 10s
int t4 = 15000; //1500ms = after 15s
int finish = 20000;  //2000ms = 20s

Amplitude amp;
float a; // amplitude value = a

float x; // x-pos of the shape
float c; //rotation of the shape

// for fixing delay problem
Boolean isStart=false;
float delay;

void setup() {
  size(800,800);
  song1 = new SoundFile(this, "nomatterwhat.mp3"); 
  amp = new Amplitude(this);
  amp.input(song1);
}
void draw() {
  background(0);

  // for fixing delay problem
  if (!isStart) {
    song1.play();
    delay=millis();
    isStart=true;
  }  

  t = (millis()-delay)%finish;
  a = amp.analyze();

  //Event/Effect 1 : 0s - 2s
  if (t < t1) {
    effect01();
  }
  //Event/Effect 2 : 2s ~ 6s
  if (t > t1 && t <t2) {
    effect02();
  }
  //Event/Effect 3 :  6s~10s
  if (t >t2 && t <t3) {
    effect03();
  }
  //Event/Effect 4 :  10s~15s
  if  (t >t3 && t <t4) {
    effect04();
  }
  //Event/Effect 5 :  15s~20s
  if  (t >t4 && t <finish) {
    effect05();
  }

  displayTime();
}
