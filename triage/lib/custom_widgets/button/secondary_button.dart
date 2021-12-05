import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  final String? buttonText;
  final Color? buttonColor;
  final VoidCallback? onPressed;
  final double? width;
  const SecondaryButton({
    Key? key,
    this.buttonText,
    this.buttonColor,
    this.onPressed,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          buttonText.toString(),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(buttonColor!),
          fixedSize: MaterialStateProperty.all<Size>(Size.fromWidth(width!)),
        ),
      ),
    );
  }
}
