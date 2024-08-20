import 'package:e_commerce_app/helper/constant.dart';
import 'package:flutter/material.dart';

class TappedCard extends StatelessWidget {
  const TappedCard({
    super.key,
    required this.title,
    required this.iconData,
    this.onTap,
  });
  final String title;
  final IconData iconData;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        color: kPrimaryColor,
        child: ListTile(
          leading: Icon(
            iconData,
            color: Colors.white,
          ),
          title: Text(
            title,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
