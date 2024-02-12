import 'package:angry_bird/Pages/TargetPyramid.dart';
import 'package:angry_bird/Pages/angry_bird.dart';
import 'package:flame/src/components/core/component.dart';
import 'package:flutter/material.dart';
import 'package:flame/game.dart';

class AngryBirdGame extends FlameGame {
  @override
  Future<void> onLoad() async {
    await super.onLoad();

    add(
    AngryBird()
    );
    add(
      TargetPyramid(this)
    );
  }

}