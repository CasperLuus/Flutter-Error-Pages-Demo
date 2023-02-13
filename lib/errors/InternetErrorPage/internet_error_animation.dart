import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InternetErrorAnimation extends StatefulWidget {
  const InternetErrorAnimation({super.key});

  @override
  State<InternetErrorAnimation> createState() => _InternetErrorAnimationState();
}

class _InternetErrorAnimationState extends State<InternetErrorAnimation>
    with SingleTickerProviderStateMixin {
  late final AnimationController _internetController;

  final RelativeRectTween _internetRelativeRectTween = RelativeRectTween(
    begin: const RelativeRect.fromLTRB(60, 0, 0, 10),
    end: const RelativeRect.fromLTRB(60, 10, 0, 0),
  );

  @override
  void initState() {
    super.initState();

    _internetController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 700))
      ..repeat(reverse: true);
  }

  @override
  void dispose() {
    _internetController.dispose();
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
              bottom: 0,
              left: 0,
              right: 0,
              child: Icon(
                Icons.wifi,
                size: 150,
              )),
          PositionedTransition(
            rect: _internetRelativeRectTween.animate(_internetController),
            child: const Icon(FontAwesomeIcons.exclamation,
                size: 110, color: Colors.red),
          ),
        ],
      ),
    );
  }
}
