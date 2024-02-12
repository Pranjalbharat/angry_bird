import 'dart:js_util';
import 'dart:ui';

import 'package:flame/components.dart';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

class TargetBlock extends PositionComponent {
  @override
  final double width;
  @override
  final double height;
  final Paint paint;

  TargetBlock(Vector2 position, {this.width = 50, this.height = 100, Color color =  Colors.blueGrey})
      : paint = Paint()..color = color {
    this.position = position;
  }

  @override
  void render(Canvas canvas) {
    super.render(canvas);
    canvas.drawRect(Rect.fromLTWH(position.x, position.y, width, height), paint);
  }
}

class TargetPyramid extends Component {
  final FlameGame game; 
  TargetPyramid(this.game) {
    // Create and position the blocks for the pyramid
    _createBlocks();
  }

  void _createBlocks() {
    // Define the positions of the blocks for the pyramid
    final List<Vector2> blockPositions = [
    // Vector2(200, 0),  
    Vector2(242, 47), 
      Vector2(270, 47), 
     Vector2(228, 98),   // Second row
      Vector2(256, 98),   // Second row
      Vector2(284, 98),   // Top center position of the pyramid
      Vector2(214, 149),   // Second row
      Vector2(242, 149),   // Second row
      Vector2(270, 149), 
      Vector2(298, 149),    // Second row
      
      Vector2(200, 200),   // Third row
      Vector2(228, 200),   // Third row
      Vector2(256, 200), 
       Vector2(284, 200),   // Third row
      Vector2(312, 200),  // Third row
      // Vector2(50, 300),    // Fourth row
      // Vector2(100, 300),   // Fourth row
      // Vector2(150, 300),   // Fourth row
      // Vector2(200, 300),   // Fourth row
      // Vector2(250, 300),   // Fourth row
      // Vector2(300, 300),   // Fourth row
      // Vector2(350, 300),   // Fourth row
      // Add more positions as needed
    ];

    // Create and add blocks to the pyramid
  for (final position in blockPositions) {
      final block = TargetBlock(position);
       game.add(block); // Add each block as a child of the pyramid
    }
  }
}


