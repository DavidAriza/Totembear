import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:totembear/constant.dart';
import 'package:totembear/pages/home_page/home_page_controller.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({
    Key key,
    @required TextStyle textStyleAlertDialog,
    @required this.controller,
  })  : _textStyleAlertDialog = textStyleAlertDialog,
        super(key: key);

  final TextStyle _textStyleAlertDialog;
  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'Enter your username',
        style: _textStyleAlertDialog,
        textAlign: TextAlign.center,
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: controller.usernameTextController,
            decoration: InputDecoration(
              enabledBorder: textFieldBorder,
              focusedBorder: textFieldBorder,
            ),
            onChanged: (value) {
              if (value != "") {
                controller.updateDialogButton(true);
              } else {
                controller.updateDialogButton(false);
              }
            },
          ),
          SizedBox(
            height: 10.0,
          ),
          Obx(
            () => RawMaterialButton(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: AppColors.red),
              ),
              onPressed: controller.enableDialogButton.value == true
                  ? () async {
                      Navigator.of(context).pop();
                      Get.snackbar(
                        'This is the username: ',
                        controller.usernameTextController.text,
                        snackPosition: SnackPosition.BOTTOM,
                        backgroundColor: AppColors.tertiaryGrey,
                        colorText: AppColors.red,
                      );
                    }
                  : null,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Show Username',
                  style: _textStyleAlertDialog,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
