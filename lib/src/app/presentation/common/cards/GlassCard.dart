import 'dart:ui';

import 'package:flutter/material.dart';

class GlassCard extends StatelessWidget {
  const GlassCard({
    super.key,
    this.width = null,
    this.height = null,
    this.borderColor = Colors.white,
    required this.borderRadius,
    required this.colors,
    this.sigmaX = 2,
    this.sigmaY = 2,
    required this.child,
  });
  final double? width;
  final double? height;
  final double sigmaX;
  final double sigmaY;
  final Color borderColor;
  final double borderRadius;
  final List<Color> colors;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Container(
        alignment: Alignment.center,
        width: width,
        height: height,
        child: Stack(
          children: [
            //blur effect
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: sigmaX, sigmaY: sigmaY),
              child: Container(),
            ),
            // gradient effect
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: borderColor,
                  ),
                  borderRadius: BorderRadius.circular(borderRadius),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: const Alignment(0.8, 1),
                      colors: colors)),
            ),
            //child
            child
          ],
        ),
      ),
    );
  }
}
