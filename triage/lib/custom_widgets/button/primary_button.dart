import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String? buttonText;
  final Color? buttonColor;
  final VoidCallback? onPressed;
  const PrimaryButton({
    Key? key,
    this.buttonText,
    this.buttonColor,
    this.onPressed,
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
          backgroundColor: MaterialStateProperty.all<Color>(
              const Color.fromRGBO(206, 93, 29, 1)),
          fixedSize: MaterialStateProperty.all<Size>(const Size.fromWidth(150)),
        ),
      ),
    );
  }
}
