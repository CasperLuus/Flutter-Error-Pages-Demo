import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginErrorAnimation extends StatefulWidget {
  const LoginErrorAnimation({super.key});

  @override
  State<LoginErrorAnimation> createState() => _LoginErrorAnimationState();
}

class _LoginErrorAnimationState extends State<LoginErrorAnimation>
    with SingleTickerProviderStateMixin {
  late final AnimationController _loginController;

  final RelativeRectTween _loginRelativeRectTween = RelativeRectTween(
    begin: const RelativeRect.fromLTRB(50, 40, 264, 20),
    end: const RelativeRect.fromLTRB(130, 40, 120, 20),
  );

  @override
  void initState() {
    super.initState();
    _loginController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 2000))
      ..repeat();
  }

  @override
  void dispose() {
    _loginController.dispose();
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
              top: 35,
              bottom: 35,
              left: 100,
              right: 0,
              child: Icon(
                Icons.lock,
                size: 80,
              )),
          PositionedTransition(
            rect: _loginRelativeRectTween.animate(_loginController),
            child: const Icon(
              Icons.vpn_key_rounded,
              size: 60,
              color: Colors.amber,
            ),
          ),
        ],
      ),
    );
  }
}