import 'package:flutter/material.dart';
import 'package:triage/custom_widgets/button/secondary_button.dart';
import 'package:unicons/unicons.dart';

class AppointmentRequestView extends StatelessWidget {
  const AppointmentRequestView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.separated(
            itemBuilder: (context, index) {
              return const AppointmentRequest();
            },
            separatorBuilder: (context, index) {
              return const Divider(
                height: 2,
                indent: 30,
                endIndent: 30,
              );
            },
            itemCount: 3));
  }
}

class AppointmentRequest extends StatelessWidget {
  const AppointmentRequest({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        radius: 25,
        backgroundColor: Colors.grey,
        child: Icon(
          UniconsLine.user,
          color: Colors.white,
        ),
      ),
      title: const Text('Abigail Asamoah'),
      subtitle: const Text('25F'),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SecondaryButton(
            onPressed: () {},
            buttonText: 'Accept',
            width: 100,
            buttonColor: const Color.fromRGBO(206, 93, 29, 1),
          ),
          const SizedBox(width: 10),
          SecondaryButton(
            onPressed: () {},
            buttonText: 'Decline',
            width: 100,
            buttonColor: const Color.fromRGBO(255, 0, 0, 1),
          ),
        ],
      ),
    );
  }
}
