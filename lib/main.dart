import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/route_manager.dart';
import 'package:totembear/pages/home_page/home_binding.dart';
import 'package:totembear/pages/home_page/home_page.dart';
import 'package:totembear/constant.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.grey,
        appBarTheme: AppBarTheme(
          color: AppColors.tertiaryGrey,
          iconTheme: IconThemeData(color: AppColors.black, size: 40),
        ),
      ),
      home: HomePage(),
      initialBinding: HomeBinding(),
    );
  }
}
