import 'package:flutter/material.dart';
import 'dart:math' as math;

class Circles extends StatelessWidget {
  final double size;
  final double rotationFactor;
  final List<Color> colors;
  final Alignment begin;
  final Alignment end;
  final List<double> stops;

  Circles({
    super.key,
    required this.size,
    this.rotationFactor = 0.1,
    required this.colors,
    required this.begin,
    required this.end,
    required this.stops,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(size / 2),
          gradient: LinearGradient(
            colors: colors,
            transform: GradientRotation(math.pi / rotationFactor),
            begin: begin,
            end: end,
            stops: stops,
          )),
    );
  }
}
