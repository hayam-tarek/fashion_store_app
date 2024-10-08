import 'package:quick_store/core/utils/constant.dart';
import 'package:flutter/material.dart';

class CustomSearchTextFormField extends StatelessWidget {
  const CustomSearchTextFormField({
    super.key,
    this.onChanged,
    this.controller,
    required this.onPressed,
  });
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: controller,
        onChanged: onChanged,
        cursorColor: kSecondaryColor,
        decoration: InputDecoration(
          // filled: true,
          // fillColor: kSecondaryColor.withOpacity(.1),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: kPrimaryColor,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: kPrimaryColor,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          hintText: 'Search',
          hintStyle: const TextStyle(
            color: Colors.grey,
          ),
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.grey,
          ),
          suffixIcon: IconButton(
            icon: const Icon(
              Icons.close,
              color: Colors.grey,
            ),
            onPressed: onPressed,
          ),
        ));
  }
}
