import 'package:flutter/material.dart';

class AppColors {
  static final red = Color.fromRGBO(191, 13, 13, 1);
  static final grey = Colors.grey[700];
  static final secondaryGrey = Colors.grey[300];
  static final tertiaryGrey = Colors.grey[500];
  static final black = Colors.black;
}

final gridViewList = <String>['HOME', 'OFFICE', 'GROUP', 'ALONE'];

final textFieldBorder = UnderlineInputBorder(
  borderSide: BorderSide(color: AppColors.red),
);
