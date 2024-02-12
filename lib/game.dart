import 'package:angry_bird/Pages/TargetPyramid.dart';
import 'package:angry_bird/Pages/angry_bird.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/src/components/core/component.dart';
import 'package:flutter/material.dart';
import 'package:flame/game.dart';

class AngryBirdGame extends FlameGame with PanDetector {
late AngryBird angryBird;
  TextComponent t1 = TextComponent(
    text: 'Direction : 0',
  );
    TextComponent velocityText = TextComponent(
    text: 'Velocity: 0',
  );
  @override
  Future<void> onLoad() async {
    await super.onLoad();
  angryBird=AngryBird();
    
    add(
    angryBird
    );
    add(
      TargetPyramid(this)
    );
    add(t1..position = Vector2(size.x / 2, 0));
      add(velocityText..position = Vector2(size.x / 2, 40));
  }

    @override
      void onPanUpdate(DragUpdateInfo info) {
        // print("hello");
      double velocity = info.delta.global.length;
      velocityText.text = 'Velocity: $velocity'; 
      Vector2 direction = info.delta.global;
      t1.text = "value : $direction"; 
      angryBird.Throw(direction,velocity);
  }

  void resetGame() {
    angryBird.position=Vector2(100, 300); 
  }


}