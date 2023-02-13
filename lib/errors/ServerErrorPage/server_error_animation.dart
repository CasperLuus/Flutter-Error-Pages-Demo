import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ServerErrorAnimation extends StatefulWidget {
  const ServerErrorAnimation({super.key});

  @override
  State<ServerErrorAnimation> createState() => _ServerErrorAnimationState();
}

class _ServerErrorAnimationState extends State<ServerErrorAnimation>
    with SingleTickerProviderStateMixin {
  late final AnimationController _serverController;

  final RelativeRectTween _serverRelativeRectTween = RelativeRectTween(
    begin: const RelativeRect.fromLTRB(172, 71, 84, 71),
    end: const RelativeRect.fromLTRB(133, 71, 123, 71),
  );

  @override
  void initState() {
    super.initState();
    _serverController =
    AnimationController(vsync: this, duration: const Duration(seconds: 2))
      ..repeat(reverse: true);
  }

  @override
  void dispose() {
    _serverController.dispose();
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
              top: 45,
              bottom: 0,
              left: 20,
              right: 200,
              child: FaIcon(FontAwesomeIcons.server, size: 60)),
          Positioned(
              top: 70,
              bottom: 70,
              left: 81,
              right: 83,
              child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(40.0)),
                  ))),
          PositionedTransition(
              rect: _serverRelativeRectTween.animate(_serverController),
              child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.amber, shape: BoxShape.circle
                    // borderRadius: BorderRadius.all(Radius.circular(40.0)),
                  ))),
          const Positioned(
              top: 25,
              bottom: 0,
              left: 183,
              right: 0,
              child: FaIcon(FontAwesomeIcons.person, size: 100)),
          const Positioned(
              top: 50,
              bottom: 0,
              left: 100,
              right: 0,
              child: FaIcon(
                FontAwesomeIcons.slash,
                size: 50,
                color: Colors.red,
              )),
        ],
      ),
    );
  }
}