PImage image;
PShape original, average;

PShader averagergb_shader;

int img_width = 600;
int img_height = 500;

void setup(){
  
  size(1200, 500, P2D);
  
  image = loadImage("photo.jpg"); // Load the original image
  image.resize(img_width, img_height);
  
  original = createShape(RECT, 0, 0, img_width, img_height);
  original.setTexture(image);
  
  average = createShape(RECT, img_width, 0, img_width, img_height);
  average.setTexture(image);

  averagergb_shader = loadShader("average_frag.glsl");
  
}

void draw(){
  resetShader();
  shape(original);
  
  shader(averagergb_shader);
  shape(average);
  
}
