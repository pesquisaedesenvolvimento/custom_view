import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerLoading extends StatelessWidget {
  ShimmerLoading(
      {required this.width,
      required this.height,
      this.child,
      this.baseColor,
      this.secondColor,
      this.direction = ShimmerDirection.ltr,
      this.duration = const Duration(milliseconds: 1500),
      this.key,
      this.loop = 0,
      this.running = true});

  final double width;
  final double height;
  final ShimmerDirection direction;
  final Duration duration;
  final bool running;
  final int loop;
  final Key? key;
  final Widget? child;
  final Color? baseColor;
  final Color? secondColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Shimmer.fromColors(
        direction: direction,
        enabled: running,
        loop: loop,
        period: duration,
        key: key,
        baseColor: baseColor != null
            ? baseColor!
            : Theme.of(context).hintColor,
        highlightColor: secondColor != null
            ? secondColor!
            : Colors.white,
        child: child ??
            Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).hintColor,
                  borderRadius: BorderRadius.circular(4)),
            ),
      ),
    );
  }
}
