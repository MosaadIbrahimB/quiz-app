import 'package:flutter/material.dart';

class CircleAvatarCutContWidget extends StatelessWidget {
  CircleAvatarCutContWidget({
    super.key,
    this.top,
    this.right,
    this.bottom,
    this.left,
    this.radius,
    this.child,
    this.backgroundColor = Colors.black,
  });

  double? top;
  double? left;
  double? bottom;
  double? right;
  double? radius;
  Widget? child;
  Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      bottom: bottom,
      right: right,
      child: CircleAvatar(
        radius: radius,
        backgroundColor: backgroundColor,
        child: child,
      ),
    );
  }
}
