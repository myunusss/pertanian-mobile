import 'package:flutter/material.dart';
import 'package:pertanian/core/style/sizes.dart';

class LabelForm extends StatelessWidget {
  final String text;

  const LabelForm({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: Sizes.sp14,
      ),
    );
  }
}
