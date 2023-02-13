import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class StyleErrorAnimation extends StatefulWidget {
  const StyleErrorAnimation({super.key});

  @override
  State<StyleErrorAnimation> createState() => _StyleErrorAnimationState();
}

class _StyleErrorAnimationState extends State<StyleErrorAnimation>
    with SingleTickerProviderStateMixin {
  late final AnimationController _bugController;

  final RelativeRectTween _bugRelativeRectTween = RelativeRectTween(
    begin: const RelativeRect.fromLTRB(0, 40, 100, 0),
    end: const RelativeRect.fromLTRB(0, 0, 10, 40),
  );

  @override
  void initState() {
    super.initState();

    _bugController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1300))
      ..repeat(reverse: true);
  }

  @override
  void dispose() {
    _bugController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 264,
      height: 150,
      child: Stack(
        children: [
          const Positioned(
              top: 0,
              bottom: 40,
              left: 102,
              right: 102,
              child: Icon(
                Icons.bug_report,
                size: 60,
              )),
          PositionedTransition(
            rect: _bugRelativeRectTween.animate(_bugController),
            child: const Icon(Icons.back_hand, size: 90, color: Colors.amber),
          ),
        ],
      ),
    );
  }
}