
import 'dart:ui';
import 'package:angry_bird/game.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/sprite.dart';

class AngryBird extends SpriteComponent with HasGameRef<AngryBirdGame> {
AngryBird() {
    // Call the onLoad function to initialize the sprite
    onLoad();
  }

  @override
  Future<void> onLoad() async {
    await super.onLoad();

    // Load the image for the Angry Bird sprite
    sprite = await Sprite.load('angry_bird.png'); // Adjust the path to your image
    size = Vector2(50, 50); // Adjust size as needed
    position = Vector2(100, 300); // Set initial position
  }

  void move(Vector2 pos){
    position.add(pos);
  }

  @override
  void update(double dt) {
    super.update(dt);
    if(isthrow){
      move(Vector2(velocityX,velocityY));

    }
    if(position.x<-width || position.y>game.size.y || position.x>game.size.x){
      game.resetGame();
    }

  }
  double velocityX=0;
  double velocityY=0;
  bool isthrow=false;
  // ignore: non_constant_identifier_names
  void Throw(Vector2 coordinates,double velocity){
    isthrow=true;
    velocityX=(-coordinates.x);
    velocityY=(-coordinates.y);
    


  }

} 









