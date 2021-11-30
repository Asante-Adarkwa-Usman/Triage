import 'package:flutter/material.dart';

class ChooseDay extends StatelessWidget {
  final bool? active;
  final String day;
  const ChooseDay({Key? key, this.active = false, required this.day})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: active,
          onChanged: null,
          activeColor: Colors.orange,
        ),
        Text(day,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontFamily: 'Oxygen-Regular',
              fontSize: 18,
            )),
      ],
    );
  }
}
