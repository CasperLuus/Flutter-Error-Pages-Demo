import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChartDataErrorAnimation extends StatefulWidget {
  const ChartDataErrorAnimation({super.key});

  @override
  State<ChartDataErrorAnimation> createState() => _ChartDataErrorAnimationState();
}

class _ChartDataErrorAnimationState extends State<ChartDataErrorAnimation>
    with SingleTickerProviderStateMixin {
  late final AnimationController _chartController;

  final RelativeRectTween _questionMark1RelativeRectTween = RelativeRectTween(
    begin: const RelativeRect.fromLTRB(50, 0, 0, 40),
    end: const RelativeRect.fromLTRB(70, 0, 0, 50),
  );

  final RelativeRectTween _questionMark2RelativeRectTween = RelativeRectTween(
    begin: const RelativeRect.fromLTRB(0, 0, 50, 80),
    end: const RelativeRect.fromLTRB(0, 0, 70, 90),
  );

  final RelativeRectTween _questionMark3RelativeRectTween = RelativeRectTween(
    begin: const RelativeRect.fromLTRB(0, 40, 120, 0),
    end: const RelativeRect.fromLTRB(0, 30, 130, 0),
  );

  final RelativeRectTween _questionMark4RelativeRectTween = RelativeRectTween(
    begin: const RelativeRect.fromLTRB(122, 73, 0, 0),
    end: const RelativeRect.fromLTRB(132, 63, 0, 0),
  );

  @override
  void initState() {
    super.initState();

    _chartController =
    AnimationController(vsync: this, duration: const Duration(seconds: 1))
      ..repeat(reverse: true);
  }

  @override
  void dispose() {
    _chartController.dispose();
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
              left: 37,
              right: 37,
              child: Icon(
                Icons.bar_chart,
                size: 150,
              )),
          PositionedTransition(
            rect: _questionMark1RelativeRectTween.animate(_chartController),
            child: const Icon(
              Icons.question_mark,
              size: 30,
              color: Colors.amber,
            ),
          ),
          PositionedTransition(
            rect: _questionMark2RelativeRectTween.animate(_chartController),
            child: const Icon(
              Icons.question_mark,
              size: 30,
              color: Colors.blue,
            ),
          ),
          PositionedTransition(
            rect: _questionMark3RelativeRectTween.animate(_chartController),
            child: const Icon(
              Icons.question_mark,
              size: 30,
              color: Colors.purple,
            ),
          ),
          PositionedTransition(
            rect: _questionMark4RelativeRectTween.animate(_chartController),
            child: const Icon(
              Icons.question_mark,
              size: 30,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}