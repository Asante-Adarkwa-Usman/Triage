import 'package:flutter/material.dart';

import 'appointment_time_view.dart';
import 'centered_text_view.dart';

class AvailableTime extends StatelessWidget {
  const AvailableTime({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CenteredText(
          text: 'Select available times within the days',
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            AppointmentTime(
              time: '8',
              active: true,
            ),
            AppointmentTime(
              time: '9',
              active: true,
            ),
            AppointmentTime(
              time: '10',
              active: true,
            ),
            AppointmentTime(
              time: '11',
              active: false,
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            AppointmentTime(
              time: '12',
              active: false,
            ),
            AppointmentTime(
              time: '13',
              active: false,
            ),
            AppointmentTime(
              time: '14',
              active: true,
            ),
            AppointmentTime(
              time: '15',
              active: true,
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            AppointmentTime(
              time: '16',
              active: false,
            ),
            AppointmentTime(
              time: '17',
              active: true,
            ),
            AppointmentTime(
              time: '18',
              active: false,
            ),
            AppointmentTime(
              time: '19',
              active: true,
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            AppointmentTime(
              time: '20',
              active: true,
            ),
            AppointmentTime(
              time: '21',
              active: false,
            ),
            AppointmentTime(
              time: '22',
              active: true,
            ),
            AppointmentTime(
              time: '23',
              active: true,
            ),
          ],
        ),
      ],
    );
  }
}
