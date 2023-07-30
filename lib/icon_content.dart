import 'package:flutter/material.dart';
import 'constant.dart';

class IconCont extends StatelessWidget {
  IconCont({required this.iconType, required this.label});

  final IconData iconType;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconType, size: 80),
        SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: kCustomTextStyle,
        ),
      ],
    );
  }
}
