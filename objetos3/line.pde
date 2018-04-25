
class Line {
  float a, b, c, d;
  Node origin, end;

  Line(Node node1, Node node2) {
    origin = node1;
    end = node2;
  }


  void display() {
    pushStyle();
    strokeWeight(3);
    if (pantalla==0) {
      stroke(247, 86, 124);
    } 
    if (pantalla==1) {
      stroke(67, 100, 54);
    }
    if (pantalla==2) {
      stroke(76, 53, 73);
    }

    a=origin().position().x;
    b=origin().position().y;
    c=end().position().x;
    d=end().position().y;
    if (b==d) {
      if (a<c) {
        while (a<c) {
          line(a, b, a+10, d);
          a=a+20;
        }
      } else if (c<a) {
        while (c<a) {
          line(c, b, c+10, d);
          c=c+20;
        }
      }
    } else if  (a==c) {
      if (b<d) {
        while (b<d) {
          line(a, b, c, b+10);
          b=b+20;
        }
      } else if (d<b) {
        while (d<b) {
          line(a, d, c, d+10);
          d=d+20;
        }
      }
    } else {
      line(a, b, c, d);
    }

    popStyle();
  }

  Node origin() {
    return origin;
  }

  Node end() {
    return end;
  }
}