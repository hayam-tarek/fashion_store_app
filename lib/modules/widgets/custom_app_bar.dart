import 'package:e_commerce_app/helper/constant.dart';
import 'package:flutter/material.dart';

AppBar customAppBar(
    {required BuildContext context,
    required String title,
    bool leading = false}) {
  return AppBar(
    backgroundColor: kPrimaryColor,
    centerTitle: true,
    leading: leading
        ? IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30,
            ),
          )
        : null,
    title: Text(
      title,
      style: const TextStyle(
        color: Colors.white,
        fontFamily: kPrimaryFont,
        fontWeight: FontWeight.bold,
        fontSize: 30,
      ),
    ),
  );
}
