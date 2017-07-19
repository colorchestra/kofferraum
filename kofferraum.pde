void setup() {
  size(600,600);
  background(30);
  noFill();
  colorMode(HSB, 100);
  PFont f;
  f = createFont("Arial",16,true); // Arial, 16 point, anti-aliasing on
  textFont(f,12);
  
  float textposy = 20;

  
  Table table = loadTable("test3.csv", "header");
  
  for (int i = 0; i<table.getRowCount(); i++) {

  // Access each row of the table one at a time, in a loop.
  TableRow row = table.getRow(i);
  String modell = row.getString("modell");
  float radstand = row.getFloat("radstand");
  float aussenlaenge = row.getFloat("aussenlaenge");
  float laderaumlaengeboden = row.getFloat("laderaumlaengeboden");
  float laderaumhoehe = row.getFloat("laderaumhoehe");
  float laderaumbreitemax = row.getFloat("laderaumbreitemax");
  float laderaumbreiteraeder = row.getFloat("laderaumbreiteraeder");

  // Do something with the data of each row
  
  float randomhue = random(100);
  stroke(randomhue,100,100);
  rect(10,10,(laderaumbreitemax / 5),(laderaumhoehe / 5));
  fill(randomhue,100,100);
  text(modell,(laderaumbreitemax / 5 + 20),textposy);
  textposy = (textposy + 20);
  noFill();



}

  
}

void draw() {
  
  
}