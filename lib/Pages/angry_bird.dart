
import 'dart:ui';
import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/sprite.dart';

class AngryBird extends SpriteComponent with DragCallbacks{
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



@override
  void onDragUpdate(DragUpdateEvent event){ 
}


} 









