import ddf.minim.*; // Imports music module 

Drop[] drops; // Creates drop placeholder
AudioPlayer player; // Creates audio player placeholder
boolean sweet = false; // Creates sweet variable which is used to make the background sweet
Minim minim; // Creates placeholder for minim

void setup(){ // Initial setup
 
  size(1000,1000); // Screensize
  drops = new Drop[3000]; // Creates 300 snow drops
  play(); // plays song
  gen(); // generates snow

}

void draw(){ 
  
  if(sweet == false) // If user hasn't pressed anything leave normal simulation playing
  {
      background(0);

  }
  else{
    background(random(255),random(255),random(255)); // If they have played something sweet colours
  }
  
  for(int drop = 0; drop < drops.length;drop++){ // Displays and moves snow
      drops[drop].display();
      drops[drop].move();
  }

}
void play() // Plays music
{
  minim = new Minim(this);
  player = minim.loadFile("MC.mp3", 2048);
  player.play();
}
void keyPressed() // If button is pressed stop music and play track 2
{
  player.close();
  minim.stop();
  minim = new Minim(this);
  player = minim.loadFile("MC2.mp3", 2048);
  player.play();
  sweet = true;
}
void gen() // Generate drops
{
    for(int drop = 0; drop < drops.length;drop++){
    drops[drop] = new Drop();
  }
}