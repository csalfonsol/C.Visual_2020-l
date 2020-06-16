import processing.video.*;

Movie myMovie;
PFont font, f;
char[] chars = {'█','█','▓','▒','░','#','≡','%','$','@','&'};
int resolution = 5;

void setup(){
  frameRate(30);
  size(640, 360);
  font = createFont("Courier", resolution + 10);
  f = createFont("Arial",16,true);
  myMovie = new Movie(this, "paris.mp4");
  myMovie.loop();
}

void movieEvent(Movie myMovie) {  
  myMovie.read();
}

void draw(){
  ascii();
  textFont(f,18);
  fill(255);
  text("FPS: " + nf(frameRate, 0, 2), 545, 20);
}

void ascii() {
  background(0);
  myMovie.loadPixels();
  textFont(font,resolution+3);
  for (int i = 0; i < myMovie.width; i+=resolution) {
    for (int j = 0; j < myMovie.height; j+=resolution) {
      color c = myMovie.pixels[i + j*myMovie.width];
      //c = color((red(c)+green(c)+blue(c))/3.0);
      fill(c);
      text(chars[int(brightness(c)/25.5)], i, j);
    }
  }
}
