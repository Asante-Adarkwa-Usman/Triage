import 'package:flutter/material.dart';

class CenteredText extends StatelessWidget {
  final String? text;
  const CenteredText({
    Key? key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text.toString(),
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
