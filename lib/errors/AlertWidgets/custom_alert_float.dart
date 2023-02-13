import 'package:flutter/material.dart';
import 'package:error_page/errors/ChartDataErrorPage/chart_data_error_animation.dart';
import 'package:error_page/errors/InternetErrorPage/internet_error_animation.dart';
import 'package:error_page/errors/LoginErrorPage/login_error_animation.dart';
import 'package:error_page/errors/ServerErrorPage/server_error_animation.dart';
import 'package:error_page/errors/StyleErrorPage/style_error_animation.dart';


class CustomAlertFloatPage extends StatefulWidget {
  const CustomAlertFloatPage(
      {super.key,
        required this.title,
        required this.errorTxt,
        required this.buttonTxt});

  final String title;
  final String errorTxt;
  final String buttonTxt;

  @override
  State<CustomAlertFloatPage> createState() => _CustomAlertFloatPageState();
}

class _CustomAlertFloatPageState extends State<CustomAlertFloatPage> {
  Widget updateWidget(String title) {
    switch (title) {
      case 'Login Failed':
        return const LoginErrorAnimation();
      case 'Server Error':
        return const ServerErrorAnimation();
      case 'Bug Found':
        return const StyleErrorAnimation();
      case 'Chart Data Unavailable':
        return const ChartDataErrorAnimation();
      case 'No Internet':
        return const InternetErrorAnimation();
      default:
        return const StyleErrorAnimation();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        blurRadius: 2.0,
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
                )));
  }
}