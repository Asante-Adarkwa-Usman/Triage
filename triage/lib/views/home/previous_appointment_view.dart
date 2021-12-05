import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class PreviousAppointmentView extends StatelessWidget {
  const PreviousAppointmentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.separated(
            itemBuilder: (context, index) {
              return const PreviousAppointment();
            },
            separatorBuilder: (context, index) {
              return const Divider(
                height: 2,
                indent: 30,
                endIndent: 30,
              );
            },
            itemCount: 1));
  }
}

class PreviousAppointment extends StatelessWidget {
  const PreviousAppointment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundColor: Colors.grey,
        child: Icon(
          UniconsLine.user,
          color: Colors.white,
        ),
      ),
      title: Text('Abigail Asamoah'),
      subtitle: Text('25F'),
    );
  }
}
