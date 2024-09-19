import 'package:flutter/material.dart';
import 'package:quick_store/core/utils/constant.dart';
import 'package:quick_store/views/widgets/custom_circle_avatar.dart';

class PickImage extends StatelessWidget {
  const PickImage({
    super.key,
    required this.networkImageUrl,
  });

  final String networkImageUrl;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomCircleAvatar(networkImageUrl: networkImageUrl),
        Positioned(
          bottom: 5,
          right: 5,
          child: Container(
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(100),
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.camera_alt_outlined,
                color: kForegroundColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
