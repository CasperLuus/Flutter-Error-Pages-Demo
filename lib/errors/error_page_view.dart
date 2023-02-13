import 'package:flutter/material.dart';
import 'package:error_page/errors/AlertWidgets/built_in_alert_float.dart';
import 'package:error_page/errors/AlertWidgets/built_in_alert.dart';
import 'package:error_page/errors/AlertWidgets/custom_alert.dart';
import 'package:error_page/errors/AlertWidgets/custom_alert_float.dart';

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

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        const Text("Custom Alert:         "),
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
        const Text("Built In Alert:           "),
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
      ]),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        const Text("Custom Float:         "),
        IconButton(
            icon: const Icon(Icons.computer),
            onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => const CustomAlertFloatPage(
                  title: "Server Error",
                  buttonTxt: "Refresh Page!",
                  errorTxt:
                  "We are currently experiencing some errors with our server. Please try again later!",
                ))),
        IconButton(
            icon: const Icon(Icons.person),
            onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => const CustomAlertFloatPage(
                  title: "Login Failed",
                  buttonTxt: "Take me back!",
                  errorTxt:
                  "Something went wrong. You may have entered the incorrect username or password. Please try again! Other text here for the sake of texting how flexibile this widget is. Does it expand? do we want it to? These are questions we need to answer.",
                ))),
        IconButton(
            icon: const Icon(Icons.bar_chart),
            onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => const CustomAlertFloatPage(
                  title: "Chart Data Unavailable",
                  buttonTxt: "Refresh Page!",
                  errorTxt:
                  'Something went wrong. This chart data is currently unavailable. Please try again later, or contact our support team!',
                ))),
        IconButton(
            icon: const Icon(Icons.style),
            onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => const CustomAlertFloatPage(
                  title: "Bug Found",
                  buttonTxt: "Report Bug!",
                  errorTxt:
                  "Seems you've caught a bug! Please send us a bug report so that we can fix it ASAP.",
                ))),
        IconButton(
            icon: const Icon(Icons.wifi_off),
            onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => const CustomAlertFloatPage(
                  title: "No Internet",
                  buttonTxt: "Refresh Page!",
                  errorTxt:
                  "Your internet seems to be off. Check your connection and try again!",
                ))),
      ]),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        const Text("Built In Alert Float: "),
        IconButton(
            icon: const Icon(Icons.computer),
            onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => const FloatAlertPage(
                      title: "Server Error",
                      buttonTxt: "Refresh Page!",
                      errorTxt:
                          "We are currently experiencing some errors with our server. Please try again later!",
                    ))),
        IconButton(
            icon: const Icon(Icons.person),
            onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => const FloatAlertPage(
                      title: "Login Failed",
                      buttonTxt: "Take me back!",
                      errorTxt:
                          "Something went wrong. You may have entered the incorrect username or password. Please try again! Other text here for the sake of texting how flexibile this widget is. Does it expand? do we want it to? These are questions we need to answer.",
                    ))),
        IconButton(
            icon: const Icon(Icons.bar_chart),
            onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => const FloatAlertPage(
                      title: "Chart Data Unavailable",
                      buttonTxt: "Refresh Page!",
                      errorTxt:
                          'Something went wrong. This chart data is currently unavailable. Please try again later, or contact our support team!',
                    ))),
        IconButton(
            icon: const Icon(Icons.style),
            onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => const FloatAlertPage(
                      title: "Bug Found",
                      buttonTxt: "Report Bug!",
                      errorTxt:
                          "Seems you've caught a bug! Please send us a bug report so that we can fix it ASAP.",
                    ))),
        IconButton(
            icon: const Icon(Icons.wifi_off),
            onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => const FloatAlertPage(
                      title: "No Internet",
                      buttonTxt: "Refresh Page!",
                      errorTxt:
                          "Your internet seems to be off. Check your connection and try again!",
                    ))),
      ]),
    ]);
  }
}
