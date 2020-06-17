PImage image;
PShape original_shape, blur_shape, sharpen_shape, edge_shape, ssaturation_shape, saturation_shape;

PShader shader_file;


void setup() {
  size(1200, 600, P2D);
  image = loadImage("photo.jpg");
  
  original_shape = createShape(RECT, 0, 0, 400, 300);
  original_shape.setTexture(image);
  
  blur_shape = createShape(RECT, 400, 0, 400, 300);
  blur_shape.setTexture(image);
  
  sharpen_shape = createShape(RECT, 800, 0, 400, 300);
  sharpen_shape.setTexture(image);
  
  edge_shape = createShape(RECT, 0, 300, 400, 300);
  edge_shape.setTexture(image);
  
  ssaturation_shape = createShape(RECT, 400, 300, 400, 300);
  ssaturation_shape.setTexture(image);
  
  saturation_shape = createShape(RECT, 800, 300, 400, 300);
  saturation_shape.setTexture(image);
  
  shader_file = loadShader("masks_frag.glsl");
}

void draw() {
  background(255);
  
  shader(shader_file);
  gaussianBlur();
  sharpen();
  edgeDetection();
  saturation_mask();
  ssaturation();
  
  resetShader();
  shape(original_shape);

}

void saturation_mask() {
  shader(shader_file);
  
  shader_file.set("c0", -1.0);
  shader_file.set("c1", -1.0);
  shader_file.set("c2", -1.0);
  shader_file.set("c3", -1.0);
  shader_file.set("c4", 9.0);
  shader_file.set("c5", -1.0);
  shader_file.set("c6", -1.0);
  shader_file.set("c7", -1.0);
  shader_file.set("c8", -1.0);
  
  shape(saturation_shape);
}

void ssaturation() {
  shader(shader_file);
  
  shader_file.set("c0", 1.0);
  shader_file.set("c1", 1.0);
  shader_file.set("c2", 1.0);
  shader_file.set("c3", 1.0);
  shader_file.set("c4", 1.0);
  shader_file.set("c5", 1.0);
  shader_file.set("c6", 1.0);
  shader_file.set("c7", 1.0);
  shader_file.set("c8", 1.0);
  
  shape(ssaturation_shape);
}

void gaussianBlur() {
  shader(shader_file);
  
  shader_file.set("c0", 0.0625);
  shader_file.set("c1", 0.125);
  shader_file.set("c2", 0.0625);
  shader_file.set("c3", 0.125);
  shader_file.set("c4", 0.25);
  shader_file.set("c5", 0.125);
  shader_file.set("c6", 0.0625);
  shader_file.set("c7", 0.125);
  shader_file.set("c8", 0.0625);
  
  shape(blur_shape);
}

void edgeDetection() {   
  shader(shader_file);
  shader_file.set("c0", -1.0);
  shader_file.set("c1", -1.0);
  shader_file.set("c2", -1.0);
  shader_file.set("c3", -1.0);
  shader_file.set("c4", 8.0);
  shader_file.set("c5", -1.0);
  shader_file.set("c6", -1.0);
  shader_file.set("c7", -1.0);
  shader_file.set("c8", -1.0);
  
  shape(edge_shape);
}

void sharpen(){
  shader(shader_file);
  shader_file.set("c0", 0.0);
  shader_file.set("c1", -1.0);
  shader_file.set("c2", 0);
  shader_file.set("c3", -1.0);
  shader_file.set("c4", 5.0);
  shader_file.set("c5", -1.0);
  shader_file.set("c6", 0.0);
  shader_file.set("c7", -1.0);
  shader_file.set("c8", 0.0);
  
  shape(sharpen_shape);
}
