Population test;

//The final destination they are trying to get to
PVector goal  = new PVector(400, 10);



void setup() {

  size(800, 800); //size of the window

  frameRate(100);//increase this to make the dots go faster

  test = new Population(1500);//create a new population with 1000 members

}





void draw() { 

  background(108);

  //Displays the generation in the corner
  PFont f = createFont("Arial",16,true);
  textFont(f, 36);
  fill(255,255,255);
  text("Generation:" + test.gen, 10, 30);


  //draw goal

  fill(255, 0, 0);

  ellipse(goal.x, goal.y, 20, 20);



  //draw obstacle(s)

  fill(255, 0, 255);



  rect(0, 300, 600, 10);
  
  rect(400, 100, 800, 10);

  rect(500, 600, 600, 10);



  if (test.allDotsDead()) {

    //genetic algorithm

    test.calculateFitness();

    test.naturalSelection();

    test.mutateDemBabies();

  } else {

    //if any of the dots are still alive then update and then show them



    test.update();

    test.show();

  }

}
