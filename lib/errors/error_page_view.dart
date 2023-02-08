import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Error Pages Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Buttons"),
          ),
          body: const Center(child: Buttons())),
    );
  }
}

//
class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        const Text("Custom Alert:    "),
        IconButton(
            icon: const Icon(Icons.computer),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CustomAlertPage(
                            title: "Server Error",
                            buttonTxt: "Refresh Page!",
                            errorTxt:
                                "We are currently experiencing some errors with our server. Please try again later!",
                          )));
            }),
        IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CustomAlertPage(
                            title: "Login Failed",
                            buttonTxt: "Take me back!",
                            errorTxt:
                                "Something went wrong. You may have entered the incorrect username or password. Please try again!",
                          )));
            }),
        IconButton(
            icon: const Icon(Icons.bar_chart),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CustomAlertPage(
                            title: "Chart Data Unavailable",
                            buttonTxt: "Refresh Page!",
                            errorTxt:
                                'Something went wrong. This chart data is currently unavailable. Please try again later, or contact our support team!',
                          )));
            }),
        IconButton(
            icon: const Icon(Icons.style),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CustomAlertPage(
                            title: "Bug Found",
                            buttonTxt: "Report Bug!",
                            errorTxt:
                                "Seems you've caught a bug! Please send us a bug report so that we can fix it ASAP.",
                          )));
            }),
        IconButton(
            icon: const Icon(Icons.wifi_off),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CustomAlertPage(
                            title: "No Internet",
                            buttonTxt: "Refresh Page!",
                            errorTxt:
                                "Your internet seems to be off. Check your connection and try again!",
                          )));
            }),
      ]),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        const Text("Built In Alert:      "),
        IconButton(
            icon: const Icon(Icons.computer),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AlertPage(
                            title: "Server Error",
                            buttonTxt: "Refresh Page!",
                            errorTxt:
                                "We are currently experiencing some errors with our server. Please try again later!",
                          )));
            }),
        IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AlertPage(
                            title: "Login Failed",
                            buttonTxt: "Take me back!",
                            errorTxt:
                                "Something went wrong. You may have entered the incorrect username or password. Please try again! Other text here for the sake of texting how flexibile this widget is. Does it expand? do we want it to? These are questions we need to answer.",
                          )));
            }),
        IconButton(
            icon: const Icon(Icons.bar_chart),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AlertPage(
                            title: "Chart Data Unavailable",
                            buttonTxt: "Refresh Page!",
                            errorTxt:
                                'Something went wrong. This chart data is currently unavailable. Please try again later, or contact our support team!',
                          )));
            }),
        IconButton(
            icon: const Icon(Icons.style),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AlertPage(
                            title: "Bug Found",
                            buttonTxt: "Report Bug!",
                            errorTxt:
                                "Seems you've caught a bug! Please send us a bug report so that we can fix it ASAP.",
                          )));
            }),
        IconButton(
            icon: const Icon(Icons.wifi_off),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AlertPage(
                            title: "No Internet",
                            buttonTxt: "Refresh Page!",
                            errorTxt:
                                "Your internet seems to be off. Check your connection and try again!",
                          )));
            }),
      ])
    ]);
  }
}

class CustomAlertPage extends StatefulWidget {
  const CustomAlertPage(
      {super.key,
      required this.title,
      required this.errorTxt,
      required this.buttonTxt});

  final String title;
  final String errorTxt;
  final String buttonTxt;

  @override
  State<CustomAlertPage> createState() => _CustomAlertPageState();
}

class _CustomAlertPageState extends State<CustomAlertPage> {
  Widget updateWidget(String title) {
    switch (title) {
      case 'Login Failed':
        return const LoginErrorAnimation();
      case 'Server Error':
        return const ServerErrorAnimation();
      case 'Bug Found':
        return const StyleBugAnimation();
      case 'Chart Data Unavailable':
        return const ChartDataErrorAnimation();
      case 'No Internet':
        return const NoInternetAnimation();
      default:
        return const StyleBugAnimation();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("lib/images/background3.jpg"),
              fit: BoxFit.cover),
        ),
        child: Scaffold(
            appBar: AppBar(
              title: Text(widget.title),
            ),
            backgroundColor: Colors.transparent,
            body: Center(
                child: Container(
              padding: const EdgeInsets.all(10), 
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 0.75,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xFF000000),
                    offset: Offset(1.0, 1.0),
                    blurRadius: 3.0,
                  )
                ],
              ),
              child: Stack(children: [
                Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            child: updateWidget(widget.title),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text('Oh no!',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 20)),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            widget.errorTxt,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(widget.buttonTxt),
                          ),
                        ],
                      ),
                    ]),
              ]),
            ))));
  }
}

class AlertPage extends StatefulWidget {
  const AlertPage(
      {super.key,
      required this.title,
      required this.errorTxt,
      required this.buttonTxt});

  final String title;
  final String errorTxt;
  final String buttonTxt;

  @override
  State<AlertPage> createState() => _AlertPageState();
}

class _AlertPageState extends State<AlertPage> {
  Widget updateWidget(String title) {
    switch (title) {
      case 'Login Failed':
        return const LoginErrorAnimation();
      case 'Server Error':
        return const ServerErrorAnimation();
      case 'Bug Found':
        return const StyleBugAnimation();
      case 'Chart Data Unavailable':
        return const ChartDataErrorAnimation();
      case 'No Internet':
        return const NoInternetAnimation();
      default:
        return const StyleBugAnimation();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("lib/images/background3.jpg"),
              fit: BoxFit.cover),
        ),
        child: Scaffold(
            appBar: AppBar(
              title: Text(widget.title),
            ),
            backgroundColor: Colors.transparent,
            body: Center(
                child: AlertDialog(

              elevation: 10,
              // title: const Text('AlertDialog Title'),
              content: SingleChildScrollView(
                child: Stack(
                  children: <Widget>[
                    Column(
                      children: [
                        SizedBox(
                          child: updateWidget(widget.title),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text("Oh no!",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20)),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(widget.errorTxt,
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontSize: 15)),
                      ],
                    )
                  ],
                ),
              ),
              actions: <Widget>[
                ElevatedButton(
                  child: Text(widget.buttonTxt),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ))));
  }
}

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

class StyleBugAnimation extends StatefulWidget {
  const StyleBugAnimation({super.key});

  @override
  State<StyleBugAnimation> createState() => _StyleBugAnimationState();
}

class _StyleBugAnimationState extends State<StyleBugAnimation>
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

class NoInternetAnimation extends StatefulWidget {
  const NoInternetAnimation({super.key});

  @override
  State<NoInternetAnimation> createState() => _NoInternetAnimationState();
}

class _NoInternetAnimationState extends State<NoInternetAnimation>
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
