import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:totembear/constant.dart';
import 'package:totembear/pages/home_page/home_page_controller.dart';
import 'package:totembear/pages/home_page/widgets/custom_dialog.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    final size = MediaQuery.of(context).size;
    final _textStyle = TextStyle(color: AppColors.secondaryGrey, fontSize: 20);
    final _textStyleAlertDialog = TextStyle(color: AppColors.grey);

    return Container(
        height: size.height * 0.17,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.red,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (_) => CustomDialog(
                      textStyleAlertDialog: _textStyleAlertDialog,
                      controller: controller),
                );
              },
              child: Text(
                'JOIN \n ADMIN ',
                style: _textStyle,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ));
  }
}
