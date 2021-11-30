import 'package:flutter/material.dart';

import 'choose_day_view.dart';

class AvailableDays extends StatelessWidget {
  const AvailableDays({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 10.0, 0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              ChooseDay(active: true, day: 'Monday'),
              ChooseDay(active: true, day: 'Tuesday'),
            ],
          ),
          const Divider(
            thickness: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              ChooseDay(active: true, day: 'Wednesday'),
              ChooseDay(active: true, day: 'Thursday'),
            ],
          ),
          const Divider(
            thickness: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              ChooseDay(active: true, day: 'Friday'),
              ChooseDay(active: true, day: 'Saturday'),
            ],
          ),
          const Divider(
            thickness: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              ChooseDay(active: false, day: 'Sunday'),
            ],
          ),
          const Divider(
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
