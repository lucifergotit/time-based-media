void effect05() {
    
    textSize(20);
    text("Effect 5", 250, 30);
    c++;
    pushMatrix();
    translate(width/2, height/2);
    rotate(radians(c));
    fill(random(255), random(255), random(255));
    rectMode(CENTER);
    rect(0, 0, 40,40);
    text("WOW", -100, 0);
    text("WOW", 50, 0);
    popMatrix();
}
