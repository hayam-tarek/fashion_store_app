import 'package:quick_store/core/utils/constant.dart';
import 'package:flutter/material.dart';

class DisplayContact extends StatelessWidget {
  const DisplayContact({
    super.key,
    required this.title,
    required this.iconData,
  });

  final String title;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Icon(
            iconData,
            color: kSecondaryColor.withOpacity(.65),
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            title,
            style: TextStyle(
              fontSize: 15,
              color: kSecondaryColor.withOpacity(.65),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
