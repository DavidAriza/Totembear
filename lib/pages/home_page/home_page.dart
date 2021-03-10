import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:totembear/constant.dart';
import 'package:totembear/pages/home_page/home_page_controller.dart';
import 'package:totembear/pages/home_page/widgets/circle_button.dart';
import 'package:totembear/pages/home_page/widgets/grid_view_list.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);
  static final String home = '/home';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _textStyle = TextStyle(color: Colors.grey[300], fontSize: 20);
  final controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(Icons.link),
          )
        ],
      ),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(23, 10, 23, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'REGISTRATE TO SECURITY OPTIONS',
                      style: _textStyle,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'CREATE NETWORK',
                      style: _textStyle,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CircleButton(),
                  ],
                )),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
                child: GirdViewList(size: size, textStyle: _textStyle),
              ),
            )
          ],
        ),
      ),
    );
  }
}
