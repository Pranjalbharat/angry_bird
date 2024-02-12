import 'package:angry_bird/game.dart';
import 'package:flutter/material.dart';
import 'package:flame/game.dart';


// class AngryBird extends FlameGame {

// }

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(GameWidget(game: AngryBirdGame()));
}
