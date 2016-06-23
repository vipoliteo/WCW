class Mouth {
  PVector pos;
  PVector size;
  color mouthColor;

  public Mouth(PVector pos, PVector size, color mouthColor) {
    this.pos = pos;
    this.size = size;
    this.mouthColor = mouthColor;
  }

  public void display() {
    fill(mouthColor);
    stroke(mouthColor * color(30, -30, 0));
    //strokeWeight(size.x);
    rectMode(CENTER);
    ellipse(pos.x, pos.y, size.x, size.y);
  }
}