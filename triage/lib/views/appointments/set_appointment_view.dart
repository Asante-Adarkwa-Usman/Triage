import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SetAppointmentView extends StatelessWidget {
  const SetAppointmentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBar(
          elevation: 0,
          //leadingWidth: MediaQuery.of(context).size.width,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(10),
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(85, 49, 78, 0.81),
          title: const Text(
            'Set Appointment',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          leading: IconButton(
            icon: const Icon(
              Icons.close,
              color: Colors.white,
              size: 24,
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(height: 10),
            CenteredText(
              text: 'Select available days within the week',
            ),
            SizedBox(height: 10),
            AvailableDays(),
            AvailableTime(),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

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
