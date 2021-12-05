import 'package:flutter/material.dart';

class AppointmentTime extends StatelessWidget {
  final String? time;
  final bool? active;

  const AppointmentTime({
    Key? key,
    required String this.time,
    required bool this.active,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.18,
        height: MediaQuery.of(context).size.width * 0.12,
        child: Card(
          color: active == true
              ? const Color.fromRGBO(206, 93, 29, 1)
              : Colors.white,
          child: Center(
            child: Text(time.toString(),
                style: const TextStyle(
                  fontFamily: 'Oxygen-Regular',
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                )),
          ),
        ),
      ),
    );
  }
}
