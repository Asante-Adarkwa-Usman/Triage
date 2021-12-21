import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class UpcomingAppointmentView extends StatelessWidget {
  const UpcomingAppointmentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.separated(
            itemBuilder: (context, index) {
              return const UpcomingAppointments();
            },
            separatorBuilder: (context, index) {
              return const Divider(
                height: 2,
                indent: 30,
                endIndent: 30,
              );
            },
            itemCount: 5)
        //,
        );
  }
}

class UpcomingAppointments extends StatelessWidget {
  const UpcomingAppointments({
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
      subtitle: const Text('25M'),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 40,
            width: 40,
            child: InkWell(
              onTap: () {},
              child: Card(
                  elevation: 0,
                  color: Colors.grey[300],
                  child: const Icon(Icons.forum_outlined,
                      color: Color.fromRGBO(206, 93, 29, 1))),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: const Text(
              '13:20',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(0, 0, 0, 0.5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
