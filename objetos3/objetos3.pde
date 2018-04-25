Grafo[] niveles;
int total, current;
int pantalla;
int arr[][]=new int[9][9];

void setup() {
  size(500, 500);
  total = 3;
  niveles = new Grafo[total];
  for (int i = 0; i < niveles.length; i++) {
    niveles[i] = new Grafo();
  }
}

void draw() {
  if (current==1) {
    if (pantalla==0) {
      background(237, 218, 230);
      niveles[0].display();
      
    } else if (pantalla==1) {
      background(214, 245, 153);
      niveles[1].display();
    } else  if (pantalla==2) {
      background(206, 154, 193);
      niveles[2].display();
    }
  }
}

void mousePressed() {
  current=1;
  for (int i = 0; i < niveles.length; i++) {
    niveles[i] = new Grafo();
  } 
  pantalla = pantalla < total-1 ? pantalla+1 : 0;
}