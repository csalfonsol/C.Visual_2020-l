PImage image;
PShape original, luma;

PShader luma_shader;

int img_width = 600;
int img_height = 500;

void setup(){
  
  size(1200, 500, P2D);
  
  image = loadImage("photo.jpg");
  image.resize(img_width, img_height);
  
  original = createShape(RECT, 0, 0, img_width, img_height);
  original.setTexture(image);
  
  luma = createShape(RECT, img_width, 0, img_width, img_height);
  luma.setTexture(image);

  luma_shader = loadShader("luma_frag.glsl");
  
}

void draw(){
  resetShader();
  shape(original);
  
  shader(luma_shader);
  shape(luma);
  
}
